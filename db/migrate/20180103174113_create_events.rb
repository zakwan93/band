class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
    	t.integer :band_id
    	t.integer :venue_id
    	t.date :event_date
    	t.boolean :alcohol_served, default: :true
      	t.timestamps null:false
    end
  end
end
