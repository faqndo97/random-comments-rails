class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :comment
      t.string :anonymous_user_id

      t.timestamps
    end
  end
end
