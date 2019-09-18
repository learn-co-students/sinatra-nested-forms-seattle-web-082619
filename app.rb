require './environment'
require 'pry'

module FormsLab

  class App < Sinatra::Base

    get'/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      params[:pirate][:ships].each do |info|
        Ship.new(name: info["name"], type: info["type"], booty: info["booty"])
      end

      @ships = Ship.all
      erb :'pirates/show'
    end

  end

end
