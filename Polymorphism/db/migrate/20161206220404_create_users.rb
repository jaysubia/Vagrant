class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :string
      t.string :email_address

      t.timestamps null: false
    end
  end
end
