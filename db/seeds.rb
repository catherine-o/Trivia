# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'cgi'
require 'json'

Question.destroy_all
Answer.destroy_all
Team.destroy_all
Round.destroy_all
RoundsQuestion.destroy_all

easy_base_url = "https://opentdb.com/api.php?amount=10&category=12&difficulty=easy&type=multiple"

easy_results = RestClient.get(easy_base_url)
easy_results_array = JSON.parse(easy_results)["results"]

easy_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 5,
        answer: result["correct_answer"]
    )
end

medium_base_url = "https://opentdb.com/api.php?amount=10&category=9&difficulty=medium&type=multiple"

medium_results = RestClient.get(medium_base_url)
medium_results_array = JSON.parse(medium_results)["results"]

medium_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 7,
        answer: result["correct_answer"]
    )
end

hard_base_url = "https://opentdb.com/api.php?amount=10&category=18&difficulty=hard&type=multiple"

hard_results = RestClient.get(hard_base_url)
hard_results_array = JSON.parse(hard_results)["results"]

hard_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 12,
        answer: result["correct_answer"]
    )
end


Team.create(team_name: "Rockets")
Team.create(team_name: "Nuggets")
Team.create(team_name: "Programmers")

round1 = Round.create(name: "Round 1")
round2 = Round.create(name: "Round 2")
round3 = Round.create(name: "Round 3")

rq1 = RoundsQuestion.create(question_id: 1, round: round1)
rq2 = RoundsQuestion.create(question_id: 2, round: round1)
RoundsQuestion.create(question_id: 3, round: round1)
RoundsQuestion.create(question_id: 4, round: round1)
RoundsQuestion.create(question_id: 5, round: round1)
RoundsQuestion.create(question_id: 6, round: round1)
RoundsQuestion.create(question_id: 7, round: round1)
RoundsQuestion.create(question_id: 8, round: round1)
RoundsQuestion.create(question_id: 9, round: round1)
RoundsQuestion.create(question_id: 10, round: round1)

RoundsQuestion.create(question_id: 11, round: round2)
RoundsQuestion.create(question_id: 12, round: round2)
RoundsQuestion.create(question_id: 13, round: round2)
RoundsQuestion.create(question_id: 14, round: round2)
RoundsQuestion.create(question_id: 15, round: round2)
RoundsQuestion.create(question_id: 16, round: round2)
RoundsQuestion.create(question_id: 17, round: round2)
RoundsQuestion.create(question_id: 18, round: round2)
RoundsQuestion.create(question_id: 19, round: round2)
RoundsQuestion.create(question_id: 20, round: round2)



byebug
    0





