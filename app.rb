require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      params[:pirate][:ships].each do |ship_params|
        Ship.new(ship_params['name'], ship_params['type'], ship_params['booty'])
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
