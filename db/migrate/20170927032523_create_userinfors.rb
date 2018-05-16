class CreateUserinfors < ActiveRecord::Migration[5.1]
  def change
    create_table :userinfors do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.date :birth_day
      t.string :phone
      t.boolean :gender
      t.text :address

      t.timestamps
    end
  end
end
