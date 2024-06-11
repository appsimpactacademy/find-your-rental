class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :property_type, null: false, foreign_key: true
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.integer :owner_id
      t.text :description

      t.timestamps
    end
  end
end
