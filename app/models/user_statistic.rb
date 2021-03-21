class UserStatistic < ApplicationRecord
  belongs_to :user


  ## virtual attributes

  def f_totalQuestionS
    self.right_questions + self.wrong_questions
  end
  
  
end
