class Question < ApplicationRecord
  # belongs_to :subject, optional: true
  belongs_to :subject, counter_cache: true, inverse_of: :questions 
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true


    #kaminari
    paginates_per 4
    
    scope :s_search_subjecT, ->(page, subject_id){
      Question.includes(:answers)
              .where(subject_id: subject_id )
              .page(page)   
    }
    scope :s_searcH, ->(page, term){
      Question.includes(:answers, :answers )
              .where("lower(description) LIKE ?", "%#{term.downcase}%" )
              .page(page)   
    }
    scope :s_ultimasquestionS, -> (page) {
          Question.includes(:answers)
                  .order('created_at desc')
                  .page(page)
    }
    
  

end

