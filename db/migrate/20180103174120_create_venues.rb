class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
    	t.string :name
    	t.string :city
    	t.string :state
    	t.boolean :family_friendly, default: :false 
      	t.timestamps null:false
    end
  end
end
