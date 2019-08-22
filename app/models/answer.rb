class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :team
  validates :text, presence: true
  

end
