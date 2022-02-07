class Vote < ApplicationRecord
  belongs_to :proposal, touch: true
  belongs_to :user

  validates :user_id, uniqueness: { scope: :proposal_id }
  validates :supports, inclusion: [true, false]

  # Expire vote cache keys after change actions
  after_commit :expire_associated_cached_keys, on: %i[create update destroy]

  private

  def expire_associated_cached_keys
    # Abort if no changes were actually applied to the record
    return unless saved_changes.present? || destroyed?

    Rails.cache.delete("yes/#{proposal_id}")
    Rails.cache.delete("no/#{proposal_id}")
  end
end