class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :age
      t.string :birth_date
      t.string :color
      t.string :name
      t.string :sex

      t.timestamps
    end
  end
end
