class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :description
      t.datetime :date
      t.string :place
      t.integer :price
      t.timestamps
    end
  end
end
