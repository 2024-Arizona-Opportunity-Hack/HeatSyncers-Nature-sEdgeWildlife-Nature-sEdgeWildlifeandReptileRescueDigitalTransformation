class AddPersonalInfoToUsers < ActiveRecord::Migration[7.2]
  def change
    change_table :users, bulk: true do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :apt_suite
      t.string :city
      t.string :state
      t.string :zip_code
    end
  end
end

