class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :product_name
      t.string :product_description
      t.decimal :product_price
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end
