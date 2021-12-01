class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.timestamps
      t.integer :prototype_id
      t.integer :user_id
    end
  end
end