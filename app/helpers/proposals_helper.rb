module ProposalsHelper
  def percentage_in_favor_of(proposal)
    return 0 unless proposal.votes.any?

    (proposal.votes.where(supports: true).count.to_f / proposal.votes.count.to_f * 100).round(2)
  end
end
