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

base_url = "https://opentdb.com/api.php?amount=10&category=12&difficulty=easy&type=multiple"

results = RestClient.get(base_url)
results_array = JSON.parse(results)["results"]

results_array.each do |result|
    Question.create(
        question_text: CGI.unescapeHTML(result["question"]),
        difficulty: result["difficulty"],
        category: result["category"],
        point_value: 1
    )
    
end
byebug
    0





