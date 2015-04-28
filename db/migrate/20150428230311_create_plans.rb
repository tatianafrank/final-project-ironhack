class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :start_time
      t.string :end_time
      t.string :venue
      t.string :location
      t.string :title
      t.string :description
      t.string :image
      t.timestamps null: false
    end
  end
end
