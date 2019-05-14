require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      #binding.pry
      @teamname = params[:team]["name"]
      @motto = params[:team]["motto"]
      @h1 = params[:team]["members"][0]
      @h1 = @h1.values
      @h2 = params[:team]["members"][1]
      @h2 = @h2.values
      @h3 = params[:team]["members"][2]
      @h3 = @h3.values
      erb :team
    end

end
