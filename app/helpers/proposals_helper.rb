module ProposalsHelper
  def percentage_in_favor_of(proposal)
    return 0 unless proposal.total_vote_count > 0

    (proposal.supported_vote_count / proposal.total_vote_count.to_f * 100).round(2)
  end

  def supported_by_user?(proposal, user)
    users_who_supported_proposal(proposal).include?(user.id)
  end

  def not_supported_by_user?(proposal, user)
    users_who_not_supported_proposal(proposal).include?(user.id)
  end

  def users_who_supported_proposal(proposal)
    Rails.cache.fetch("yes/#{proposal.id}") do
      proposal.votes.where(supports: true).pluck(:user_id)
    end
  end

  def users_who_not_supported_proposal(proposal)
    Rails.cache.fetch("no/#{proposal.id}") do
      proposal.votes.where(supports: false).pluck(:user_id)
    end
  end
end
