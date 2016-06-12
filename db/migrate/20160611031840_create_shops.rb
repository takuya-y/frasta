class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :content
      t.text :image_url
      t.timestamps
    end
  end
end
