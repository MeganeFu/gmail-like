class EmailsController < ApplicationController

	
	def index
		@emails = Email.all
	end

	
	
   def create
		 @emails = Email.all
		 @emails = Email.create(object: "objet email", body: Faker::Book.genre)

   
#
#		    if @email.save
			respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
				end
#      redirect_to root_path
#      flash[:notice] = "Email created"
#    else
#      redirect_to root_path
#      flash[:notice] = "Please try again"
#    end
#	
	
		 end 
end


