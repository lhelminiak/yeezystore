class RemoveTypeFromItemsModel < ActiveRecord::Migration
  def change
    remove_column :items, :type
  end
end
