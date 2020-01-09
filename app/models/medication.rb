class Medication < ApplicationRecord

	# attr_accessor(
 #    :name,
 #    :start_date,
 #    :end_date,
 #    :dose,
 #    :notes
 #  )

	  validate :name
  	validate :start_date
 	  validate :end_date
  	validate :dose
  	validate :notes

end
