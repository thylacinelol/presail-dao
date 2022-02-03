class ProposalsController < ApplicationController
  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = current_user.proposals.new(proposal_params)
    if @proposal.save
      redirect_to root_path, notice: 'Created proposal'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @proposals = Proposal.all.sort_by { |proposal| -proposal.votes.where(supports: true).count }
  end

  private

  def proposal_params
    params.require(:proposal).permit(:title, :description)
  end
end
