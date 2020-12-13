class UsersController < ApplicationController 

    get '/signup' do 
        erb :"users/new"
    end 

    post '/signup' do 
        @user = User.new(params[:user])
        if @user.save
            session[:user_id] = @user.id 
            erb :'users/welcome' 
        else 
            @erros = @user.errors.full_messages.join(" - ")    
            erb :'users/new' 
        end 
     end 

     get '/login' do 
     end 

     get '/logout' do 
        session.clear 
        redirect to '/login'
     end 
end 