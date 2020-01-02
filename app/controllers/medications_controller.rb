class MedicationsController < ApplicationController

	def index 
		@medications = Medication.all
	end

	def new 
		@medication = Medication.new
	end

	def show
		@medication = Medication.find(params[:id])
	end

	def create
 		@medication = Medication.new(medication_params)
 		#Rails.logger.info(@medication.errors.full_messages.inspect()) unless @medication.save
 		if @medication.save
 			redirect_to summary_index_path
 		else
 			render :action => 'new'
 		end

		

 		# if @medication.save
   #    		#redirect_to :action => 'index'
   #    		flash[:success] = "works"
   #    		redirect_to summary_index_path
   # 		else
   # 			flash[:error] = "doesn't work"
   		
   #    		render :action => 'new'
   # 		end
   		# 
 		#respond_with @medications, locations: summary_isndex_path
	end

	def edit
		@medication = Medication.find(params[:id])
	end

	def update
		@medication = Medication.find(params[:id])

		# if @book.update_attributes(book_param)
  #     		redirect_to :action => 'show', :id => @book
  #  		else
  #     		@subjects = Subject.all
  #     		render :action => 'edit'
  #  		end
	end

	def delete
		Medication.find(params[:id]).destroy
		#redirect
	end

	private

	def medication_params
   		params.require(:medication).permit(:name, :start_date, :end_date, :dose, :notes)
	end
end
