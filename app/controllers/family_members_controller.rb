class FamilyMembersController < ApplicationController 

    get '/signup' do 
        erb :"users/new"
    end 

    post '/signup' do 
        @user = User.create(params[:user])
        session[:user_id] = @user.id 
        erb :'users/welcome' 
    end 
end 