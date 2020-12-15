require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  not_found do 
    status 404
    erb :failure 
  end 

  helpers do 
    def logged_in?
      !!session[:user_id]
    end 

    def current_user 
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end 


  get "/" do
    erb :welcome
  end

end
