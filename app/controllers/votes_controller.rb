class VotesController < ApplicationController
  before_action :set_proposal

  def create
    @vote = current_user.votes.find_or_initialize_by(proposal: @proposal)
    @vote.update!(supports: params[:supports])
    redirect_to root_path
  end

  private

  def set_proposal
    @proposal = Proposal.find(params[:proposal_id])
  end
end
