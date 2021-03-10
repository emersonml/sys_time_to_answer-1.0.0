class Site::WelcomeController < SiteController
  def index
    # @questions = Question.last_questions(params[:page])

    @questions = Question.s_ultimasquestionS(params[:page])

  end
  
end
