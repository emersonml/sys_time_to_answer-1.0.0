class Question < ApplicationRecord
  # belongs_to :subject, optional: true
  belongs_to :subject, inverse_of: :questions 
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true


  #kaminari
  paginates_per 4

  scope :s_search, ->(page, term){
    Question.includes(:answers)
            .where("lower(description) LIKE ?", "%#{term.downcase}%" )
            .page(page)   
  }

  scope :s_ultimasquestionS, -> (page) {
        Question.includes(:answers)
                .order('created_at desc')
                .page(page)
  }
    
  

end

