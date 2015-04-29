class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
	    t.string :description
	    t.datetime :start_time
	    t.datetime :end_time
	    t.string :title
	    t.string :location
	    

      t.timestamps null: false
    end
  end
end
