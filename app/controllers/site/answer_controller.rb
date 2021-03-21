class Site::AnswerController < SiteController

  
  def question
 
 
    @answer = Answer.find(params[:answer_id]) #aqui ja vem informando se a resposta é correct?

    if user_signed_in?
      v_userStatistiC = UserStatistic.find_or_create_by(user: current_user ) ## !!!  esse user poderia ser user_id mas o rail ja sabe que é um objeto e trata isso
      if @answer.correct?
        v_userStatistiC.right_questions += 1
      else
        v_userStatistiC.wrong_questions += 1
      end
      v_userStatistiC.save
    end
    # redis_answer = Rails.cache.read(params[:answer_id]).split("@@")
    # @question_id = redis_answer.first
    # @correct = ActiveModel::Type::Boolean.new.cast(redis_answer.last)

    # UserStatistic.set_statistic(@correct, current_user)
  end





end
