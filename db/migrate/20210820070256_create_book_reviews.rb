class CreateBookReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :book_reviews do |t|
      t.belongs_to :book
      t.belongs_to :user

      t.string :title, null: false
      t.string :description, null: false
      t.integer :rate, null: false
      
      t.timestamps
    end
  end
end
