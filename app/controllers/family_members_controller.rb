class FamilyMembersController < ApplicationController 

    get '/familymembers' do 
        @familymembers = FamilyMember.all
        erb :"familymembers/index"
    end 


end 