class AddTelephoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :telephone, :string
  end
end
