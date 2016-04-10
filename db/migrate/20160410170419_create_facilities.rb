class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.datetime :date

      t.timestamps null: false
    end
  end
end
