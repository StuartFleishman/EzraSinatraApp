class FamilyMembersController < ApplicationController 

    get '/familymembers' do 
        @familymembers = FamilyMember.all
        erb :"familymembers/index"
    end 

    get '/familymembers/new' do 
        erb :"familymembers/new"
    end 

    post '/familymembers' do 
        familymember = current_user.family_members.create(params)
        redirect '/familymembers'
    end 

    get '/familymembers/:id' do 
        @familymember = FamilyMember.find_by(id: params[:id]) 
        if @familymember 
            erb :"familymembers/show"
        else 
            redirect "/familymembers"
        end 
    end 

    get '/familymembers/:id/edit' do 
        @familymember = FamilyMember.find_by(id: params[:id])
        erb :"familymembers/edit"
    end 

    patch '/familymembers/:id' do  
        @familymember = FamilyMember.find_by(id: params[:id])
        @familymember.update(params[:familymember])
        redirect to "/familymembers/#{@familymember.id}"
    end 

    delete '/familymembers/:id' do 
        @familymember = FamilyMember.find_by(id: params[:id])
        @familymember.destroy 
        redirect '/familymembers'
    end 

    
    
    



end 