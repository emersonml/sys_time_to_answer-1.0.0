# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

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


















$(".pages-contact").click(function() {
  alert("O alert rodou!");
});
