class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.boolean :available
      t.integer :shelter_id

      t.timestamps
    end
  end
end
