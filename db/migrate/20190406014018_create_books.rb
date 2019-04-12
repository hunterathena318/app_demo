class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :page
      t.integer :rating
      t.datetime :published
      t.float :price
      t.string :image
      t.boolean :status


      t.timestamps
    end
  end
end
