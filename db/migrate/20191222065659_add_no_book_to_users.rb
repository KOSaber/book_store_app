class AddNoBookToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :no_book, :bigint
  end
end
