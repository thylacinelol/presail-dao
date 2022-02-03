# Presail take-home test
#### For positions: Lead Developer & Senior Engineer (Ruby on Rails)

---

### Presail DAO

This app is called Presail DAO.

In crypto & Web3, a **DAO** (Decentralized Autonomous Organization) is a  
group of people who form a group to vote on certain proposals. 
Any member can make proposals for the other members, who then vote on whether or not
the DAO should act on the proposal. The votes are recorded on the blockchain. 
DAOs can be anything from multimillion dollar investment communities voting on their next
investment, to groups of friends deciding where to go out to eat. 

This Rails app, is for a (hypothetical) DAO where Presail investors
can vote on the features they want the Presail team to make next.

This app is still missing a lot of functionality. 
There is no proper user system and the voting system does not actually rely on blockchain technology. However, this task is **NOT** about expanding functionality, but
about making the current code more performant.

### Assignment: Make PresailDAO more performant

Imagine this DAO is launching tomorrow, and will immediately
get visited by tens of thousands of users, who:
- Vote frequently
- Create proposals frequently
- Refresh the page constantly to see updated vote counts

**Part 1:** Improve the parts of the code that is not performant.
We want to improve any code that will place an unnecessary strain on the servers or our database. 
Describe why you're making these changes in your PR.

Do not implement extremely time-consuming improvements, but instead
describe them in your PR.

**Part 2:** In the PR, expand on what sort of infrastructure you would host this app on, in order for it to perform. 
How would you host this code? Would you introduce any third-party provider to help with performance?

### How to submit your answer
1) Fork this repository to your own Github user
2) Make a PR with all your changes
3) Make a PR for your fork, and attach a link to the PR to your answer.
4) Write the PR as you would in a normal work setting, but make sure to describe the reasoning behind the changes you make. We are at least as interested in your thought process, as in the changes you make.

### Getting up and running
The app uses
- Rails 7, Ruby 3.1
- Tailwind and CSS bundling for CSS
- Javascript bundling Stimulus for Javascript (there is no JS included in the app, currently)

You are free to change any of these, if you 
feel it helps you with the assignment, but it is not a requirement.

### How the assignment is evaluated
We will look for:
- Improvements made to the code inside the app folder
- Improvements made to the database design / data model
- The reasoning you provide in your PR
- Any smart tricks or tools you use to detect poorly performing code.

### Limitations
- **Be mindful of your own time**. If you want to make large changes that require more
  than an evening to complete, you can describe them in the PR,
  instead of implementing them fully.
- You may include **any gems or code libraries** you like
- Do not remove or add functionality. Your optimizations should be invisible to the end-user.

### The stack
The app uses default Rails 7 settings. The only alterations we made were:
- Tailwind and CSS bundling for CSS
- Javascript bundling (there is no JS included in the app, currently)

You are free to change the stack, if you
feel it helps you with the assignment, but it is not a requirement.

**Good luck!**

![Presail DAO UI](https://i.postimg.cc/KjthTrbx/imagelink.png)

