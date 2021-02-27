# README


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







Fsi7p(Sz#H,(.^V



<script src="assets/js/jquery.min.js"></script>

<script>
  alert('okfff');
</script> -->
