class AddEfidToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :efid, :string
  end
end
