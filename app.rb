require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :new
    end

    post "/pirates" do 
      # binding.pry
      @pirate_info = params["pirate"]
      @pirate = Pirate.new(@pirate_info["name"], @pirate_info["weight"], @pirate_info["height"])
      erb :show
    end

  end
end
