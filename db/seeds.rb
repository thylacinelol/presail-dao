tomas = User.create!(public_key: '0xCF542dF1A163CB1d06ac32efc75F7960B77bB94f')

portfolio_manager = tomas.proposals.create!(title: 'Portfolio manager', description: "A tool that helps me keep track of how much I've made/lost on my investments")
tomas.proposals.create!(title: 'Tax reporting tool', description: 'A tool that exports all the data I need for my tax returns')
tomas.proposals.create!(title: 'Distribution calendar', description: 'A calendar that shows me when I can expect to see my distributions')

tomas.votes.create!(proposal: portfolio_manager, supports: true)
