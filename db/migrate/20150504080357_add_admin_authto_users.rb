class AddAdminAuthtoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :authadmin, :string
  end
end
