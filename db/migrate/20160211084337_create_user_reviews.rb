class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.belongs_to :user
      t.string :reviewer_name, :default => "Anonim Pompacı"
      t.integer :rate, :default => 5
      t.text :review
      t.timestamps null: false
    end
  end
end
