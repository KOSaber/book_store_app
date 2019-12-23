class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :auther
      t.string :publisher
      t.string :edition
      t.string :status
      t.string :pic
      t.integer :price

      t.timestamps
    end
  end
end
