class ChangeCityInDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :city_id
    add_reference :dogs, :city, foreign_key: true
  end
end