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
 			flash[:notice] = "Medication successfully created"
 			redirect_to summary_index_path
 		else
 			render :action => 'new'
 		end
	end

	def edit
		@medication = Medication.find(params[:id])
		Rails.logger.info(@medication.errors.full_messages.inspect())
	end

	def update
		@medication = Medication.find(params[:id])
		if @medication.update_attributes(medication_params)
			flash[:notice] = "Medication successfully updated"
      		redirect_to summary_index_path
   		else
      		render :action => 'edit'
   		end
	end

	def destroy
		@medication = Medication.find(params[:id])
		if @medication.destroy
			flash[:notice] = "Medication successfully deleted"
			redirect_to summary_index_path
		end
	end

	private

	def medication_params
   		params.require(:medication).permit(:name, :start_date, :end_date, :dose, :notes)
	end
end
