class CreateDonations < ActiveRecord::Migration[7.2]
  def change
    create_table :donations do |t|
      t.float :amount
      t.text :note

      t.timestamps
    end
  end
end
