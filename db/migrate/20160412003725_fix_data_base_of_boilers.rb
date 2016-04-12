class FixDataBaseOfBoilers < ActiveRecord::Migration
  def change
    remove_column :boilers, :type, :string
    add_column :boilers, :manfacture, :string
  end
end
