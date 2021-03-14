https://www.youtube.com/watch?v=SLWUEu1mmvM  (  debung )

# README
 ssh root@45.177.133.13 -p 22122

# Webpack é o empacotado JavaScript padrão para novos aplicativos Rails.

  gem 'coffee-rails'
  gem 'devise'
bundle 
rails generate devise:install
rails g
rails generate devise Admin; rails generate devise User
# em config/devise
  config.scoped_views = true
rails generate devise:views admins; rails generate devise:views users
rails db:migrate
# config/initializers/locale.rb  CRIAR ESSE AQUIVO
rails c
I18n.locale
I18n.l Date.today
rails g controller admins_backoffice/welcome index; 
rails g controller users_backoffice/welcome index
rails g controller admins_backoffice;
rails g controller users_backoffice
rails g task dev setup
rails dev:setup

  <%= current_admin.inspect %>
  <%= admin_signed_in? %>
  <%= link_to 'logoff', destroy_user_session_path, method: :delete%>
# config/devise  (By default, Devise signs out all scopes)
  config.sign_out_all_scopes = false
#Remova o turbolinks
  Gemfile -  assets/application.js e  views/layouts
  criar o aquivo assets/application.js 

yarn add bootstrap@3.3.7
yarn add metismenu@3.0.3  #metismenu exige q o jquery seja 3.3.1
yarn add jquery@3.3.1
yarn add font-awesome@4.6.3
yarn add font-awesome@4.7.0



nvm install 10.17.0
yarn add lodash #cria a pasta node_modulos


gem 'font-awesome-sass' # para que os path do css
# desabilitei gem 'font-awesome-sass' e add o cdn so awesome 4.7.0
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
# escolher icons https://fontawesome.com/icons?d=gallery&q=dashbo

gem 'faker'
gem 'awesome_print' # rails c => ap Adimn.all


152 - conhecendo o form_with  #https://www.udemy.com/course/rubyonrails-5x/learn/lecture/13333554#announcements
|1 form_with é a mistura de form_for com form_tag, é quando vc precisaria trabalhar com variáveis vindo do banco  
|2 form_with vem por padrao com jason, entao é preciso adicionar local:true para html

#consultar erros e capturar em forma de array
|a = Admin.new
|a.save!
|a.errors
|a.errors.any?
|a.errors.full_messages

DICAS VSCODE = shift +alt + 0 para alternar o layout splitado

h = {a: 1, b: 2, c: 3}
h.extract!(:b) # assim consigo remover a chave b da hash

bootstrap-growl-ifightcrime # para notice em javascript
  baixando do site do yarnpkg
  foi preciso instalar pelo npm pois o lock do yarn estava conflitando com o npm
  npm add bootstrap-growl-ifightcrime

add o caminho do jquery ifightcrime no assets
https://github.com/ifightcrime/bootstrap-growl  ## documentacao do ifightcrime
   
=============
EXISTE VERDO E ACTION
delete é o verbo 
destroy é a action
   entao fazer a correcao na router
=============

##PAGINAÇAO COM kaminari

## alterando de:   rvmrc to .ruby-version   ## https://stackoverflow.com/questions/15708916/use-rvmrc-or-ruby-version-file-to-set-a-project-gemset-with-rvm
 rvm --create --ruby-version 2.1.1@nancy
 rvm info

27/02/21 ==================== theme para PAGINAÇAO kaminari
erro no gerador de views => rails g kaminari:views
adicionei o tema na mao

27/02/21 commit 14 ==============
gem kaminari-i18n  # só add e pronto


#criando as migracoes  https://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html

rails g model subject description:string
rails g model question description:text subject:references
rails g model answer description:text correct:boolean question:references
  add as restricoes de integridades nas migrate
rails db:migrate


# criando task para assuntos
  DEFAULT_FILES_PATH = File.join(Rails.root, 'lib', 'tmp')
     File.join é responsavel por  colocar uma / antes de lib e tmp para caso use windows

rails c
q = Question.all  
q.subject.description

s = Subject.find(52)
s.description
s.questions.description ##  aqui a nescessário add o has e observe que questionS plural

rails g controller AdminsBackoffice/Questions

locales
s = Subject.all
s.model ## com isso eu consigo na view saber quem é o model 

help -> traduzindo_para_humanos()

## 3 formas de cadastrar no ActiveRecord
# Question.create!(description: "sdkgksg?", subject: Subject.all.sample)  ## sample = amostra do sorteado da vez
## q.subject = Subject.all.sample
   q.save!
### params = { question: {description: "asskgj?", subject_id: 123} }
     Question.create!(params[:question])
 #### na vdd sao 4 forma entao vai a ultima aí
   params = { question: {description: "asskgj?", subject_id: 123} }
   x = Question.new(params[:question])
   x.save!

 params[:question][:answers_attributes].push({ description: 'resposta 4', correct: false})

#################
NAO DEIXAR DE REVISAR 180 A 183
##############

gem rails_db  ## https://github.com/igorkasyanchuk/rails_db/
gem 'web-console'  ## https://github.com/rails/web-console

local: true, ====> para nao ultilizar ajax 

Answer.where(id: 1) ## ele retorna um array (ActiveRecord)
Answer.find(id: 1) ## ele traz de fato a tupla


## -- Pense sempre em como o servidor vai receber as requisicoes, bem como o DB está reagindo

# counter_cache   ->  https://www.udemy.com/course/rubyonrails-5x/learn/lecture/14742938#announcements
  migration cria o esquema
  migrate migra o esquema para o db


213 ##  =>  Validation Helpers  #  https://guides.rubyonrails.org/active_record_validations.html#validation-helpers

rails g model UserProfile address:string gender:string birthdate:date user:references


@user.build_user_profile #!!!   ##quando se tem um relacionamento do tipo has_name o build server para criar os registros da tabela relacionada de se o relacionamento fosse o contrario o build ficaria no final tipo: user_profile_build



# trabalhando com data
   https://jqueryui.com/datepicker/     https://classic.yarnpkg.com/pt-BR/package/jquery-ui

#  rota para admins  ##   get 'r_admins', to: 'admins_backoffice/welcome#index', as: 'r_admins' 

# Modals  BOOTSTRAP
219 # corrigindo a data de nascimento do perfil  ### eu nao apliquei mas tem coisa importante nesse aula 

# ACTIVE STORAGE adicionando foto ao perfil 
    bin/rails active_storage:install  # esse comando vai criar duas migrations para criar as tabelas  ### https://edgeguides.rubyonrails.org/active_storage_overview.html






























Fsi7p(Sz#H,(.^V



<script src="assets/js/jquery.min.js"></script>

<script>
  alert('okfff');
</script> -->
