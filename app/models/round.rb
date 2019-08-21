class Round < ApplicationRecord
    has_many :teams
    has_many :rounds_questions
    has_many :questions, through: :rounds_questions


    def find_categories
        categories = []
        self.questions.map do |question|
                categories << question.category
            end
        categories.uniq
    end
end


# byebug
#     0