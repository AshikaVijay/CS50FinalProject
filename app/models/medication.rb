class Medication < ApplicationRecord

	# attr_accessor(
 #    :name,
 #    :start_date,
 #    :end_date,
 #    :dose,
 #    :notes
 #  )

	  validates :name, presence: true
  	validates :start_date, presence: true
 	  validates :end_date, presence: true
  	validates :dose, acceptance: true
  	validates :notes, acceptance: true

end
