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
    # Might want later to move to a Query object
    @proposals = proposals_query
  end

  private

  def proposals_query
    Proposal.left_outer_joins(:votes)
            .select(
              <<-SQL.squish
                proposals.*,
                COUNT(votes.id) as total_vote_count,
                COUNT(votes.id) filter (where supports = true) as supported_vote_count
              SQL
            )
            .group('proposals.id')
            .order(supported_vote_count: :desc)
  end

  def proposal_params
    params.require(:proposal).permit(:title, :description)
  end
end
