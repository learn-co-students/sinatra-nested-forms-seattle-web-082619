require './environment'

module FormsLab
  class App < Sinatra::Base

    #go to `create pirate` page
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])
      @ship_01 = Ship.new(params["pirate"]["ships"][0])
      @ship_02 = Ship.new(params["pirate"]["ships"][1])
      erb :'pirates/show'
    end

  end
end
