class CreateUserSubscriptions < ActiveRecord::Migration
  def change
    create_table :user_subscriptions do |t|
      t.belongs_to :user
      t.integer :amounth
      t.datetime :start
      t.integer :days
      t.integer :priority
      t.integer :special
      t.boolean :supported
      t.timestamps null: false
    end
  end
end
