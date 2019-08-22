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

Round.destroy_all
Question.destroy_all
Answer.destroy_all
Team.destroy_all
RoundsQuestion.destroy_all

music_base_url = "https://opentdb.com/api.php?amount=40&category=12&type=multiple"

music_results = RestClient.get(music_base_url)
music_results_array = JSON.parse(music_results)["results"]

music_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 5,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end

general_base_url = "https://opentdb.com/api.php?amount=40&category=9&type=multiple"

general_results = RestClient.get(general_base_url)
general_results_array = JSON.parse(general_results)["results"]

general_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 7,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end

computer_base_url = "https://opentdb.com/api.php?amount=40&category=18&type=multiple"

computer_results = RestClient.get(computer_base_url)
computer_results_array = JSON.parse(computer_results)["results"]

computer_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 9,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end

tv_base_url = "https://opentdb.com/api.php?amount=40&category=14&type=multiple"

tv_results = RestClient.get(tv_base_url)
tv_results_array = JSON.parse(tv_results)["results"]

tv_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 9,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end

animals_base_url = "https://opentdb.com/api.php?amount=40&category=22&type=multiple"

animals_results = RestClient.get(animals_base_url)
animals_results_array = JSON.parse(animals_results)["results"]

animals_results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 9,
        answer: CGI.unescapeHTML(result["correct_answer"]),
        incorrect_answer: result["incorrect_answers"]
    )
end


round1 = Round.create(name: "Entertainment: Music")
round2 = Round.create(name: "General Knowledge")
round3 = Round.create(name: "Computer Programming")
round4 = Round.create(name: "Entertainment: Television")
round5 = Round.create(name: "Geography")

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
RoundsQuestion.create(question_id: 21, round: round1)
RoundsQuestion.create(question_id: 22, round: round1)
RoundsQuestion.create(question_id: 23, round: round1)
RoundsQuestion.create(question_id: 24, round: round1)
RoundsQuestion.create(question_id: 25, round: round1)
RoundsQuestion.create(question_id: 26, round: round1)
RoundsQuestion.create(question_id: 27, round: round1)
RoundsQuestion.create(question_id: 28, round: round1)
RoundsQuestion.create(question_id: 29, round: round1)
RoundsQuestion.create(question_id: 30, round: round1)
RoundsQuestion.create(question_id: 31, round: round1)
RoundsQuestion.create(question_id: 32, round: round1)
RoundsQuestion.create(question_id: 33, round: round1)
RoundsQuestion.create(question_id: 34, round: round1)
RoundsQuestion.create(question_id: 35, round: round1)
RoundsQuestion.create(question_id: 36, round: round1)
RoundsQuestion.create(question_id: 37, round: round1)
RoundsQuestion.create(question_id: 38, round: round1)
RoundsQuestion.create(question_id: 39, round: round1)
RoundsQuestion.create(question_id: 40, round: round1)

RoundsQuestion.create(question_id: 41, round: round2)
RoundsQuestion.create(question_id: 42, round: round2)
RoundsQuestion.create(question_id: 43, round: round2)
RoundsQuestion.create(question_id: 44, round: round2)
RoundsQuestion.create(question_id: 45, round: round2)
RoundsQuestion.create(question_id: 46, round: round2)
RoundsQuestion.create(question_id: 47, round: round2)
RoundsQuestion.create(question_id: 48, round: round2)
RoundsQuestion.create(question_id: 49, round: round2)
RoundsQuestion.create(question_id: 50, round: round2)
RoundsQuestion.create(question_id: 51, round: round2)
RoundsQuestion.create(question_id: 52, round: round2)
RoundsQuestion.create(question_id: 53, round: round2)
RoundsQuestion.create(question_id: 54, round: round2)
RoundsQuestion.create(question_id: 55, round: round2)
RoundsQuestion.create(question_id: 56, round: round2)
RoundsQuestion.create(question_id: 57, round: round2)
RoundsQuestion.create(question_id: 58, round: round2)
RoundsQuestion.create(question_id: 59, round: round2)
RoundsQuestion.create(question_id: 60, round: round2)
RoundsQuestion.create(question_id: 61, round: round2)
RoundsQuestion.create(question_id: 62, round: round2)
RoundsQuestion.create(question_id: 63, round: round2)
RoundsQuestion.create(question_id: 64, round: round2)
RoundsQuestion.create(question_id: 65, round: round2)
RoundsQuestion.create(question_id: 66, round: round2)
RoundsQuestion.create(question_id: 67, round: round2)
RoundsQuestion.create(question_id: 68, round: round2)
RoundsQuestion.create(question_id: 69, round: round2)
RoundsQuestion.create(question_id: 70, round: round2)
RoundsQuestion.create(question_id: 71, round: round2)
RoundsQuestion.create(question_id: 72, round: round2)
RoundsQuestion.create(question_id: 73, round: round2)
RoundsQuestion.create(question_id: 74, round: round2)
RoundsQuestion.create(question_id: 75, round: round2)
RoundsQuestion.create(question_id: 76, round: round2)
RoundsQuestion.create(question_id: 77, round: round2)
RoundsQuestion.create(question_id: 78, round: round2)
RoundsQuestion.create(question_id: 79, round: round2)
RoundsQuestion.create(question_id: 80, round: round2)

RoundsQuestion.create(question_id: 81, round: round3)
RoundsQuestion.create(question_id: 82, round: round3)
RoundsQuestion.create(question_id: 83, round: round3)
RoundsQuestion.create(question_id: 84, round: round3)
RoundsQuestion.create(question_id: 85, round: round3)
RoundsQuestion.create(question_id: 86, round: round3)
RoundsQuestion.create(question_id: 87, round: round3)
RoundsQuestion.create(question_id: 88, round: round3)
RoundsQuestion.create(question_id: 89, round: round3)
RoundsQuestion.create(question_id: 90, round: round3)
RoundsQuestion.create(question_id: 91, round: round3)
RoundsQuestion.create(question_id: 92, round: round3)
RoundsQuestion.create(question_id: 93, round: round3)
RoundsQuestion.create(question_id: 94, round: round3)
RoundsQuestion.create(question_id: 95, round: round3)
RoundsQuestion.create(question_id: 96, round: round3)
RoundsQuestion.create(question_id: 97, round: round3)
RoundsQuestion.create(question_id: 98, round: round3)
RoundsQuestion.create(question_id: 99, round: round3)
RoundsQuestion.create(question_id: 100, round: round3)
RoundsQuestion.create(question_id: 101, round: round3)
RoundsQuestion.create(question_id: 102, round: round3)
RoundsQuestion.create(question_id: 103, round: round3)
RoundsQuestion.create(question_id: 104, round: round3)
RoundsQuestion.create(question_id: 105, round: round3)
RoundsQuestion.create(question_id: 106, round: round3)
RoundsQuestion.create(question_id: 107, round: round3)
RoundsQuestion.create(question_id: 108, round: round3)
RoundsQuestion.create(question_id: 109, round: round3)
RoundsQuestion.create(question_id: 110, round: round3)
RoundsQuestion.create(question_id: 111, round: round3)
RoundsQuestion.create(question_id: 112, round: round3)
RoundsQuestion.create(question_id: 113, round: round3)
RoundsQuestion.create(question_id: 114, round: round3)
RoundsQuestion.create(question_id: 115, round: round3)
RoundsQuestion.create(question_id: 116, round: round3)
RoundsQuestion.create(question_id: 117, round: round3)
RoundsQuestion.create(question_id: 118, round: round3)
RoundsQuestion.create(question_id: 119, round: round3)
RoundsQuestion.create(question_id: 120, round: round3)

RoundsQuestion.create(question_id: 121, round: round4)
RoundsQuestion.create(question_id: 122, round: round4)
RoundsQuestion.create(question_id: 123, round: round4)
RoundsQuestion.create(question_id: 124, round: round4)
RoundsQuestion.create(question_id: 125, round: round4)
RoundsQuestion.create(question_id: 126, round: round4)
RoundsQuestion.create(question_id: 127, round: round4)
RoundsQuestion.create(question_id: 128, round: round4)
RoundsQuestion.create(question_id: 129, round: round4)
RoundsQuestion.create(question_id: 130, round: round4)
RoundsQuestion.create(question_id: 131, round: round4)
RoundsQuestion.create(question_id: 132, round: round4)
RoundsQuestion.create(question_id: 133, round: round4)
RoundsQuestion.create(question_id: 134, round: round4)
RoundsQuestion.create(question_id: 135, round: round4)
RoundsQuestion.create(question_id: 136, round: round4)
RoundsQuestion.create(question_id: 137, round: round4)
RoundsQuestion.create(question_id: 138, round: round4)
RoundsQuestion.create(question_id: 139, round: round4)
RoundsQuestion.create(question_id: 140, round: round4)
RoundsQuestion.create(question_id: 141, round: round4)
RoundsQuestion.create(question_id: 142, round: round4)
RoundsQuestion.create(question_id: 143, round: round4)
RoundsQuestion.create(question_id: 144, round: round4)
RoundsQuestion.create(question_id: 145, round: round4)
RoundsQuestion.create(question_id: 146, round: round4)
RoundsQuestion.create(question_id: 147, round: round4)
RoundsQuestion.create(question_id: 148, round: round4)
RoundsQuestion.create(question_id: 149, round: round4)
RoundsQuestion.create(question_id: 150, round: round4)
RoundsQuestion.create(question_id: 151, round: round4)
RoundsQuestion.create(question_id: 152, round: round4)
RoundsQuestion.create(question_id: 153, round: round4)
RoundsQuestion.create(question_id: 154, round: round4)
RoundsQuestion.create(question_id: 155, round: round4)
RoundsQuestion.create(question_id: 156, round: round4)
RoundsQuestion.create(question_id: 157, round: round4)
RoundsQuestion.create(question_id: 158, round: round4)
RoundsQuestion.create(question_id: 159, round: round4)
RoundsQuestion.create(question_id: 160, round: round4)

RoundsQuestion.create(question_id: 161, round: round5)
RoundsQuestion.create(question_id: 162, round: round5)
RoundsQuestion.create(question_id: 163, round: round5)
RoundsQuestion.create(question_id: 164, round: round5)
RoundsQuestion.create(question_id: 165, round: round5)
RoundsQuestion.create(question_id: 166, round: round5)
RoundsQuestion.create(question_id: 167, round: round5)
RoundsQuestion.create(question_id: 168, round: round5)
RoundsQuestion.create(question_id: 169, round: round5)
RoundsQuestion.create(question_id: 170, round: round5)
RoundsQuestion.create(question_id: 171, round: round5)
RoundsQuestion.create(question_id: 172, round: round5)
RoundsQuestion.create(question_id: 173, round: round5)
RoundsQuestion.create(question_id: 174, round: round5)
RoundsQuestion.create(question_id: 175, round: round5)
RoundsQuestion.create(question_id: 176, round: round5)
RoundsQuestion.create(question_id: 177, round: round5)
RoundsQuestion.create(question_id: 178, round: round5)
RoundsQuestion.create(question_id: 179, round: round5)
RoundsQuestion.create(question_id: 180, round: round5)
RoundsQuestion.create(question_id: 181, round: round5)
RoundsQuestion.create(question_id: 182, round: round5)
RoundsQuestion.create(question_id: 183, round: round5)
RoundsQuestion.create(question_id: 184, round: round5)
RoundsQuestion.create(question_id: 185, round: round5)
RoundsQuestion.create(question_id: 186, round: round5)
RoundsQuestion.create(question_id: 187, round: round5)
RoundsQuestion.create(question_id: 188, round: round5)
RoundsQuestion.create(question_id: 189, round: round5)
RoundsQuestion.create(question_id: 190, round: round5)
RoundsQuestion.create(question_id: 191, round: round5)
RoundsQuestion.create(question_id: 192, round: round5)
RoundsQuestion.create(question_id: 193, round: round5)
RoundsQuestion.create(question_id: 194, round: round5)
RoundsQuestion.create(question_id: 195, round: round5)
RoundsQuestion.create(question_id: 196, round: round5)
RoundsQuestion.create(question_id: 197, round: round5)
RoundsQuestion.create(question_id: 198, round: round5)
RoundsQuestion.create(question_id: 199, round: round5)
RoundsQuestion.create(question_id: 200, round: round5)






# byebug
#     0





