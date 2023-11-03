class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.datetime :birthday
      t.string :email

      t.timestamps
    end
  end
end
