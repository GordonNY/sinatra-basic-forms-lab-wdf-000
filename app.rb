require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @name = "Puppy Name:\n#{params[:name]}"
    @breed = "Puppy Breed:\n#{params[:breed]}"
    @age = "Puppy Age:\n#{params[:age]} months"
    erb :display_puppy
  end
end
