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
    elsif @color == "blue"
      @background_color = "linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);"
    elsif @color == "red"
      @background_color = "linear-gradient(to right, #ff8177 0%, #ff867a 0%, #ff8c7f 21%, #f99185 52%, #cf556c 78%, #b12a5b 100%);"
    elsif @color == "green"
    @background_color = "linear-gradient(120deg, #d4fc79 0%, #96e6a1 100%);"
    elsif @color == "yellow"
    @background_color = "linear-gradient(120deg, #f6d365 0%, #fda085 100%);"
    elsif @color == "orange"
    @background_color = "linear-gradient(-60deg, #ff5858 0%, #f09819 100%);"
    elsif @color == "purple"
    @background_color = "linear-gradient(-225deg, #5271C4 0%, #B19FFF 48%, #ECA1FE 100%);"
    end
    return erb :page_3
  end
end
