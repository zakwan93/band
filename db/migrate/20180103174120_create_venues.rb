class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|

      t.timestamps
    end
  end
end
