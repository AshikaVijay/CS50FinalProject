class ChangeDoseToBeFloatInMedication < ActiveRecord::Migration[6.0]
  def change
  	change_column :medications, :dose, :float
  end
end
