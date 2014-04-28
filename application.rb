require 'sinatra/base'

class Application < Sinatra::Application

  def initialize(app=nil)
    super(app)

    # initialize any other instance variables for you
    # application below this comment. One example would be repositories
    # to store things in a database.

  end

  get '/' do
    erb :index
  end

  get '/dogs' do
    erb :dogs, locals: {:dogs => DB[:dogs].all}
  end

  get '/dogs/new' do
    erb :new_dogs
  end

  post '/dogs' do
    DB[:dogs].insert({:name => params[:name], :description => params[:description], :rating_1_to_5 => params[:rating_1_to_5]})
    redirect '/dogs'
  end


end