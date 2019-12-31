class MedicationsController < ApplicationController

	def index 
		@medications = Medication.all
	end

	def new 
		@medications = Medication.new
	end

	def show
		@medications = Medication.find(params[:id])
	end

	def create
 		@medications = Medication.new(medications_params)
 		#@medications.save

 		if @medications.save
      		#redirect_to :action => 'index'
      		flash[:success] = "works"
      		redirect_to summary_index_path
   		else
   			flash[:error] = "doesn't work"
      		render :action => 'new'
   		end
   		# 
 		#respond_with @medications, locations: summary_index_path
	end

	def edit
		@medications = Medication.find(params[:id])
	end

	def update
		@medications = Medication.find(params[:id])

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

	def medications_params
   		params.require(:medication).permit(:name, :start_date, :end_date, :dose, :notes)
	end
end
