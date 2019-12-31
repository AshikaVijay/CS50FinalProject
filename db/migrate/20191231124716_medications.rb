class Medications < ActiveRecord::Migration[6.0]
  def change
  	 create_table :medications do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :dose
      t.text :notes

      t.timestamp
  end
end
