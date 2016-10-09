class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :kind
      t.string :name
      t.string :image_url
      t.float :price
      t.string :size
      t.text :description

      t.timestamps null: false
    end
  end
end
