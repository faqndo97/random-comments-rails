class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.text :body, null: false
      t.integer :likes, null: false, default: 0

      t.timestamps
    end
  end
end
