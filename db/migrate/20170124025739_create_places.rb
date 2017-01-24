class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :website

      t.timestamps
    end
  end
end
