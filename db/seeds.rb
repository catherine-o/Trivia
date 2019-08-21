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

easy_base_url = "https://opentdb.com/api.php?amount=20&category=12&difficulty=easy&type=multiple"

easy_results = RestClient.get(easy_base_url)
easy_results_array = JSON.parse(easy_results)["results"]

easy_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 5,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end

medium_base_url = "https://opentdb.com/api.php?amount=20&category=9&difficulty=easy&type=multiple"

medium_results = RestClient.get(medium_base_url)
medium_results_array = JSON.parse(medium_results)["results"]

medium_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 7,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end

hard_base_url = "https://opentdb.com/api.php?amount=20&category=18&difficulty=easy&type=multiple"

hard_results = RestClient.get(hard_base_url)
hard_results_array = JSON.parse(hard_results)["results"]

hard_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 12,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end


round1 = Round.create(name: "Entertainment: Music")
round2 = Round.create(name: "General Knowledge")
round3 = Round.create(name: "Computer Programming")

RoundsQuestion.create(question_id: 1, round: round1)
RoundsQuestion.create(question_id: 2, round: round1)
RoundsQuestion.create(question_id: 3, round: round1)
RoundsQuestion.create(question_id: 4, round: round1)
RoundsQuestion.create(question_id: 5, round: round1)
RoundsQuestion.create(question_id: 6, round: round1)
RoundsQuestion.create(question_id: 7, round: round1)
RoundsQuestion.create(question_id: 8, round: round1)
RoundsQuestion.create(question_id: 9, round: round1)
RoundsQuestion.create(question_id: 10, round: round1)
RoundsQuestion.create(question_id: 11, round: round1)
RoundsQuestion.create(question_id: 12, round: round1)
RoundsQuestion.create(question_id: 13, round: round1)
RoundsQuestion.create(question_id: 14, round: round1)
RoundsQuestion.create(question_id: 15, round: round1)
RoundsQuestion.create(question_id: 16, round: round1)
RoundsQuestion.create(question_id: 17, round: round1)
RoundsQuestion.create(question_id: 18, round: round1)
RoundsQuestion.create(question_id: 19, round: round1)
RoundsQuestion.create(question_id: 20, round: round1)

RoundsQuestion.create(question_id: 21, round: round2)
RoundsQuestion.create(question_id: 22, round: round2)
RoundsQuestion.create(question_id: 23, round: round2)
RoundsQuestion.create(question_id: 24, round: round2)
RoundsQuestion.create(question_id: 25, round: round2)
RoundsQuestion.create(question_id: 26, round: round2)
RoundsQuestion.create(question_id: 27, round: round2)
RoundsQuestion.create(question_id: 28, round: round2)
RoundsQuestion.create(question_id: 29, round: round2)
RoundsQuestion.create(question_id: 30, round: round2)
RoundsQuestion.create(question_id: 31, round: round2)
RoundsQuestion.create(question_id: 32, round: round2)
RoundsQuestion.create(question_id: 33, round: round2)
RoundsQuestion.create(question_id: 34, round: round2)
RoundsQuestion.create(question_id: 35, round: round2)
RoundsQuestion.create(question_id: 36, round: round2)
RoundsQuestion.create(question_id: 37, round: round2)
RoundsQuestion.create(question_id: 38, round: round2)
RoundsQuestion.create(question_id: 39, round: round2)
RoundsQuestion.create(question_id: 40, round: round2)

RoundsQuestion.create(question_id: 41, round: round3)
RoundsQuestion.create(question_id: 42, round: round3)
RoundsQuestion.create(question_id: 43, round: round3)
RoundsQuestion.create(question_id: 44, round: round3)
RoundsQuestion.create(question_id: 45, round: round3)
RoundsQuestion.create(question_id: 46, round: round3)
RoundsQuestion.create(question_id: 47, round: round3)
RoundsQuestion.create(question_id: 48, round: round3)
RoundsQuestion.create(question_id: 49, round: round3)
RoundsQuestion.create(question_id: 50, round: round3)
RoundsQuestion.create(question_id: 51, round: round3)
RoundsQuestion.create(question_id: 52, round: round3)
RoundsQuestion.create(question_id: 53, round: round3)
RoundsQuestion.create(question_id: 54, round: round3)
RoundsQuestion.create(question_id: 55, round: round3)
RoundsQuestion.create(question_id: 56, round: round3)
RoundsQuestion.create(question_id: 57, round: round3)
RoundsQuestion.create(question_id: 58, round: round3)
RoundsQuestion.create(question_id: 59, round: round3)
RoundsQuestion.create(question_id: 60, round: round3)



# byebug
#     0





