class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.integer :priority
      t.float :latitude
      t.float :longitude
      t.string :address, null: false

      t.timestamps
    end
  end
end
