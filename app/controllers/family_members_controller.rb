class FamilyMembersController < ApplicationController 

    get '/familymembers' do 
        @familymembers = FamilyMember.all
        erb :"familymembers/index"
    end 

    get '/familymembers/new' do 
        erb :"familymembers/new"
    end 

    post '/familymembers' do 
        FamilyMember.create(params)
        redirect '/familymembers'
    end 

    get '/familymembers/:id/edit' do 
        @familymember = FamilyMember.find_by(id: params[:id]) 
        erb :"familymembers/edit"
    end 
    
    
    
    get '/familymembers/:id' do 
        @familymember = FamilyMember.find_by(id: params[:id]) 
        if @familymember 
            erb :"familymembers/show"
        else 
            redirect "/familymembers"
        end 
    end 


end 