class Answer < ApplicationRecord
  belongs_to :question
  has_many :teams_answers
  has_many :teams, through: :teams_answers
  validates :text, presence: true
  after_save :check_answer
  @is_correct = ""

  def check_answer
   
    if self.text == self.question.answer
        @is_correct = "Correct!, you get #{self.question.point_value} points!"
    elsif self.text != self.question.answer
        @is_correct = "Wrong! The correct answer is #{self.question.answer}"
    else
        self.text == nil
        @is_correct = ""
    end
   puts @is_correct

  end

end
