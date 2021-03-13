class Site::SearchController < SiteController
  
  def questions

    @questions = Question.s_searcH(params[:page], params[:term])                  
  end

  def subject
    @questions = Question.s_search_subjecT(params[:page], params[:subject_id])
  end
end
