class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  
  # def  index
    # quando se esta usando o active record no exemplo find_by_event entao pode-se criar um scope
   # @v_totalUserS = AdminStatistic.find_by_event(AdminStatistic::EVENTS[:total_users]).value ### !!!!!!!!!!!!!  find_by_  combinado com compo da tabela event
  #  @v_totalQuestionS = AdminStatistic.find_by_event(AdminStatistic::EVENTS[:total_questions]).value ### !!!!!!!!!!!!!  find_by_  combinado com compo da tabela event
  # end
  
  def index
    @v_totalUserS = AdminStatistic.s_totalUsers ### !!!!!!!!!!!!  find_by_  combinado com compo da tabela event
    @v_totalQuestionS = AdminStatistic.s_totalQuestions ### !!!!!!!!!!!!!  find_by_  combinado com compo da tabela event
  end

end
