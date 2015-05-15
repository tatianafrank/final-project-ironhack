class AddEbcategoryToTags < ActiveRecord::Migration
  def change
  	add_column :tags, :ebcategory, :string
  end
end
