class AddKeywordToTags < ActiveRecord::Migration
  def change
  	add_column :tags, :keyword, :string
  end
end
