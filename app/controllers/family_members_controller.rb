class FamilyMembersController < ApplicationController 

    get '/familymembers' do 
        # @familymember = FamilyMember.find_by(id: params[:id])
        # if @familymember.user == @current_user
        # # @familymembers = FamilyMember.all
            @current_user = current_user.family_members.all 
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
        if @familymember.user == current_user
            erb :"familymembers/edit"
        else  
            redirect to '/familymembers'
        end 
    end 

    patch '/familymembers/:id' do  
        @familymember = FamilyMember.find_by(id: params[:id])
        if @familymember.user == current_user
            @familymember.update(params[:familymember])
            redirect to "/familymembers/#{@familymember.id}"
        else  
            redirect to '/familymembers'
        end 
    end 

    delete '/familymembers/:id' do 
        @familymember = FamilyMember.find_by(id: params[:id])
        if @familymember.user == current_user
            @familymember.destroy 
            redirect '/familymembers'
        else  
            redirect to '/familymembers'
        end 
    end 

    
    
    



end 