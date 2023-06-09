class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name,           null: false
      t.integer :prefecture_id, null: false
      t.string :city,           null: false
      t.text :text
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
