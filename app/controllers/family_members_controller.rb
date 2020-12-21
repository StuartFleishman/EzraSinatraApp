class FamilyMembersController < ApplicationController 

    get '/familymembers' do 
        @current_users_family_members = current_user.family_members
        erb :"familymembers/index"
    end 

    get '/familymembers/new' do 
        erb :"familymembers/new"
    end 

    post '/familymembers' do 
        @familymember = current_user.family_members.create(params)
        if @familymember.save
            redirect '/familymembers'
        else  
            @errors = @familymember.errors.full_messages.join(" - ") 
            erb :"familymembers/new"
        end 
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