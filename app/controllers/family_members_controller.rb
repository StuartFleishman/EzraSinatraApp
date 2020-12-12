class FamilyMembersController < ApplicationController 

    get '/familymembers' do 
        @familymembers = FamilyMember.all
        erb :"familymembers/index"
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