class RemoveNoBookFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :no_book, :string
  end
end
