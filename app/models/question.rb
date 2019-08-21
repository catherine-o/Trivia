class Question < ApplicationRecord
    has_many :rounds_questions
    has_many :rounds, through: :rounds_questions
    has_many :answers
    has_many :teams_answers
    has_many :teams, through: :teams_answers
    
    
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

        all_answers.shuffle
    
    end
    

end
