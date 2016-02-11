class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :phone2
      t.text :self_dsc
      t.text :company_dsc
      t.integer :country
      t.integer :city
      t.integer :county
      t.integer :province
      t.integer :skin
      t.integer :hair
      t.integer :eyes
      t.integer :height_cm
      t.integer :weight_kg
      t.integer :cup_cm
      t.integer :cupsize
      t.integer :price_incall_a_session
      t.integer :price_outcall_a_session
      t.integer :price_incall_an_hour
      t.integer :price_outcall_an_hour
      t.integer :price_incall_an_and_half_hour
      t.integer :price_outcall_an_and_half_hour
      t.integer :price_incall_two_hours
      t.integer :price_outcall_two_hours
      t.integer :price_incall_night
      t.integer :price_outcall_night
      t.timestamps null: false
    end
  end
end
