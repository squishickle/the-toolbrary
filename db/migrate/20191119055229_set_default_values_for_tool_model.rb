class SetDefaultValuesForToolModel < ActiveRecord::Migration[5.2]
  def change
    change_column :tools, :availability_status, :boolean, default: true
    change_column :tools, :condition, :boolean, default: true
  end
end
