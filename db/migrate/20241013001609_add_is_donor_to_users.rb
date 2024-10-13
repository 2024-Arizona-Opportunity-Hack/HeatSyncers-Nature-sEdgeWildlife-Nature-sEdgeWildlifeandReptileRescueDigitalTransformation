class AddIsDonorToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :is_donor, :boolean, default: false, null: false
  end
end

