class CreateUserImages < ActiveRecord::Migration
  def change
    create_table :user_images do |t|
      t.belongs_to :user
      t.boolean :cover
      t.timestamps null: false
    end
  end
end
