class RemoveKindFromItemModel < ActiveRecord::Migration
  def change
    remove_column :items, :kind
  end
end
