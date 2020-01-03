class SummaryController < ApplicationController
  def index
  	@medications = Medication.all
  end
end
