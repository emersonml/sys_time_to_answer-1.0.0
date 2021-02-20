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



nvm install 10.17.0
yarn add lodash #cria a pasta node_modulos












<script src="assets/js/jquery.min.js"></script>

<script>
  alert('okfff');
</script> -->
