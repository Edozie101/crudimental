class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text_area :description
      t.integer :price
    end
  end
end
