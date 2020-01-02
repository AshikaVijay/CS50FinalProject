class Medication < ApplicationRecord

	# attr_accessor(
 #    :name,
 #    :start_date,
 #    :end_date,
 #    :dose,
 #    :notes
 #  )

	  validate :name
  	validates :start_date, presence: true
 	  validates :end_date, presence: true
  	validate :dose
  	validate :notes

end
