class CreateBoilers < ActiveRecord::Migration
  def change
    create_table :boilers do |t|
      t.string :make
      t.string :type
      t.datetime :year
      t.references :facility, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
