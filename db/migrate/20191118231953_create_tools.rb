class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :condition
      t.integer :user_id
      t.boolean :availability_status
      t.integer :price
      t.string :brand
      t.text :condition_detail
      t.text :tech_specs
      t.text :parts_list
      t.string :category

      t.timestamps
    end
  end
end
