class AddEmailToLenders < ActiveRecord::Migration
  def change
    add_column :lenders, :email, :string
  end
end
