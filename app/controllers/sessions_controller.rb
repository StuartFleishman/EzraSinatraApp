class SessionsController < ApplicationController 



     get '/login' do 
        erb :'sessions/new'
     end 

     post '/login' do 
        user = User.find_by(user_name: params[:user][:user_name])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            redirect to '/familymembers'
        else  
            redirect to '/login'
        end 
     end 

     get "/logout" do 
        session.clear 
        redirect to '/'
     end 
end 