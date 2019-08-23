# Trivia Time!
> Let's play a round.

## Table of contents
* [General info](#general-info)
* [Intro Video](#intro-video)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [License](#license)

## General info
Trivia Time is a Ruby on Rails application that allows users to choose a category of questions, create a team name, accrue points and view where they stand against other teams on a scoreboard. Play a round to test your wits!

## Intro Video
[Trivia Time on YouTube](https://www.youtube.com/watch?v=Gq7AQbAOsg8)

## Technologies
* Rails - version 5.2.3
* SQLite - version 3.24.0

## Setup
To run this project, install it locally by cloning the GitHub repository and typing:
```ruby
bundle

rails db:{create,migrate,seed}

rails s
```
Then open your browser (preferably Chrome) and go to http://localhost:3000 to begin.

## Code Examples
```ruby
def find_categories
    categories = []
    self.questions.map do |question|
        categories << question.category
    end
    categories.uniq
end
```

```ruby
def all_team_names_and_scores
    namescore = []
    self.teams.each do |team|
        namescore << "#{team.team_name}: #{team.score}"
    end 
    namescore
end
```


## Features
* Choose a category of trivia questions
* Continue playing with created team account
* Create a new team
* Update a team name
* Play the game
* View Scoreboard


To-do list:
* Login Authentication
* Refactor “code smell”
* Refactor some HTML formatting to CSS files
* Review CSS selectors
* Allow teams to be deleted
* Allow teams to change questions category
* Finalize rspec testing

## Status
Project is: finished (except for tests) with option to expand functionality and DRY out code.

## Inspiration
The inspiration for Trivia Time came from an association with a friend of [Rob](https://github.com/Jerkbert) who hosts trivia nights and needs a new way to keep team scores. We decided to create the whole game of trivia in order to expand functionality and create more robust data relationships.

## Contact
Created by [Catherine O'Hara](www.linkedin.com/in/catherine-o) and [Rob Ballantyne](https://www.linkedin.com/in/rob-ballantyne-73b66b45/)

Feel free to contact us!

## License
[Click to view](https://github.com/catherine-o/Trivia/blob/master/LICENSE)
