require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/page_1' do
    return erb :page_1
  end
  
  get '/page_2' do
    return erb :page_2
  end 
end
