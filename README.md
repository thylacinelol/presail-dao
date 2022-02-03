# Presail take-home test
#### For positions: Lead Developer & Senior Engineer (Ruby on Rails)

---

# Presail DAO

This app is called Presail DAO.

In crypto & Web3, a **DAO** (Decentralized Autonomous Organization) is a  
a group of people who form an organization to vote on certain proposals. 
Any member can make proposals to the rest of the group, that the other members can vote on. The votes are recorded on the blockchain. 
DAOs can be anything from multimillion dollar investment communities voting on their next
investment, to groups of friends deciding where to go out to eat. 

This Rails app, is for a (hypothetical) DAO where Presail investors
can vote on the features they want the Presail team to make next.

This app is still missing a lot of functionality. There is no proper user system and the voting system does not actually rely on blockchain technology. 

However, this task is **NOT** about expanding functionality, but
about making the current code more performant.

### Assignment: Make PresailDAO more performant

Imagine this DAO is launching tomorrow, and will immediately
get visited by **tens of thousands of users**, who:
- Use the website to vote frequently
- Create proposals frequently
- Refresh the page constantly to see updated vote counts

**Part 1:** Improve the parts of the code that will not perform well in this scenario
We want to improve any code that will place an unnecessary strain on the servers or our database. 
Describe why you're making these changes in your PR.

Avoid making very time-consuming changes (i.e. more than an evening),
and instead describe these in your PR.

**Part 2:** In the PR, expand on what sort of infrastructure you would host this app on, in order for it to perform. 
How would you host this code? Would you introduce any third-party provider to help with performance?
Is Rails or Ruby placing any inherit limitations on the performance?

### How to submit your answer
1) Fork this repository to your own Github user
2) Make a PR with all your changes, to your own fork
3) Write the PR as you would in a normal work setting, but make sure to describe the reasoning behind the changes you make. We are at least as interested in your thought process, as in the changes you make.
4) Add a link to the PR in your answer (make sure it's publicly available)

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
- Your thoughts about infrastructure, caching, and performance overall

### Limitations
- **Be mindful of your own time**. Don't spend more than an evening. We are not looking for a complete answer, but for good reasoning.
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

