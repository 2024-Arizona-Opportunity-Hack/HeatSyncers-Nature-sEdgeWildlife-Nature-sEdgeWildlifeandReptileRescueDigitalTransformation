class CreateDonorContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :donor_contacts do |t|
      t.string :type

      t.timestamps
    end
  end
end
