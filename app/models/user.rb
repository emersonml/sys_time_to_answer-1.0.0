class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_one :user_profile
  # accepts_nested_attributes_for :user_profile, reject_if: :all, allow_destroy: true #!!! ja me fudi aqui tb
  accepts_nested_attributes_for :user_profile, reject_if: :all_blank  

  # Callback
  after_create :f_setStatistiC


  #Validations  #  https://guides.rubyonrails.org/active_record_validations.html#validation-helpers
  validates :first_name, presence: true,  # tem que existir alguma informacao
              length: { minimum: 3},        # nao pode ser menos que xx
              on: :update, 
              unless: :f_resetPasswordTokenPresenT?  
              
  # Virtual Attributes
  def f_fullNamE
    [self.first_name, self.last_name].join(' ')
  end

private

  def f_setStatistiC
    AdminStatistic.f_setEvent(AdminStatistic::EVENTS[:total_users])
  end

  def f_resetPasswordTokenPresenT?
    !!$v_globalParamS[:user][:reset_password_token]  
  end



end
