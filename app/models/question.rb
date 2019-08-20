class Question < ApplicationRecord
    has_many :rounds_questions
    has_many :rounds, through: :rounds_questions
    has_many :answers
    has_many :teams_answers
    has_many :teams, through: :teams_answers
    
    
    

end


# <% if @answer.text == @question.answer %>
#     <h1> Correct!<h1>
# <% elsif @answer.text != @question.answer %>
#     <h1> WRONG!<h1>
# <% else %>
# <% end %>
#     