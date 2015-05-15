class AddEbidToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :ebid, :string
  end
end
