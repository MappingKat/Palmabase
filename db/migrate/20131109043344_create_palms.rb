class CreatePalms < ActiveRecord::Migration
  def change
    create_table :palms do |t|
      t.string :block
      t.integer :number
      t.integer :sph
      t.boolean :river
      t.boolean :road
      t.date :year_planted

      t.timestamps
    end
  end
end
