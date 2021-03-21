class UsersBackoffice::WelcomeController < UsersBackofficeController
  
  def index
    @userStatistiC = UserStatistic.find_or_create_by(user: current_user) ## find_or_create_by pq se a pessoa chegar aqui sem ter nenhuma resposta cadastrada o sistema ja cria para nao dar error
  end
  
end
