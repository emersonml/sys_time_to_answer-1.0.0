module Kaminari
    module Generators
  
      require 'open-uri' # この行を追記
  
      class ViewsGenerator < Rails::Generators::NamedBase