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
  
  post '/page_3' do
    @month = params[:month]
    @day = params[:day]
    @year = params[:year]
    @color = params[:color]
    @diary = params[:diary]

    if @color == "pink"
      @background_color = "linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);"
    end
    return erb :page_3
  end
end
