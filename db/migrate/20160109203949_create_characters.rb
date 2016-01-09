class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :rank
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :birthplace
      t.text :bio

      t.timestamps null: false
    end
  end
end
