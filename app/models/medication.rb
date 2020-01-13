class Medication < ApplicationRecord

	  validate :name
  	validate :start_date
 	  validate :end_date
  	validate :dose
  	validate :notes


def self.search_by(search_term)
  where("name LIKE :search_term", 
  search_term: "%#{search_term}%") 
end

end
