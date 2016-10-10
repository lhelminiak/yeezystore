class AddKindToItemModel < ActiveRecord::Migration
  def change
    add_column :items, :kind, :integer
  end
end
