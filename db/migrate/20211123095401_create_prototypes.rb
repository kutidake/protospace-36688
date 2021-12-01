class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null:false
      t.text :catch_copy, null:false
      t.text :concept, null:false
      t.references :user, null: false, foreign_key: true
      has_one_attached :image
      validates :title, presence: true
      validates :catch_copy, presence: true
      validates :concept, presence: true
      validates :image, presence: true

      t.timestamps
    end
  end
end
