class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    	s.tring :name

      t.timestamps
    end
  end
end
