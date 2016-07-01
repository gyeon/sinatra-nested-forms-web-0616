require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/pirates' do 
      @pirates = Pirate.all
      erb :'pirates/show'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      @pirates = Pirate.all
      
      erb :"/pirates/show"
    end 





    # code other routes/actions here

  end
end
