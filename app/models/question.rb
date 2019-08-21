class Question < ApplicationRecord
    has_many :rounds_questions
    has_many :rounds, through: :rounds_questions
    has_many :answers
    
    
    def self.categories
        categories = []
        self.all.select do |question|
            categories << question.category
        end
        categories
    end

    def all_answers
        all_answers = []

        all_answers << self.incorrect_answer.split(/[\"|\",\|\"]/)[1]
        all_answers << self.incorrect_answer.split(/[\"|\",\|\"]/)[4]
        all_answers << self.incorrect_answer.split(/[\"|\",\|\"]/)[7]
        all_answers << self.answer

        fixed_answers = []
        all_answers.each do |answer|
           fixed_answers << CGI.unescapeHTML(answer)
        end
        fixed_answers

    
    
    end
    

end
