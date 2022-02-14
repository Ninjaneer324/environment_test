class CreateBooksOwneds < ActiveRecord::Migration[6.1]
  def change
    create_table :books_owneds do |t|
      #t.integer :user_id
      t.belongs_to :user
      #t.integer :book_id
      t.belongs_to :book
      t.timestamps
    end
  end
end
