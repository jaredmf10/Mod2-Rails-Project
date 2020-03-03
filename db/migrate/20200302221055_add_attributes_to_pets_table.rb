class AddAttributesToPetsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :age, :integer
    add_column :pets, :gender, :string
    add_column :pets, :img_url, :string
  end
end
