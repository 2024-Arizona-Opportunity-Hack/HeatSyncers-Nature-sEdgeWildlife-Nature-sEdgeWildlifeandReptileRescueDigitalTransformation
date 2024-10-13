class AddDonorAndNoteToDonorContact < ActiveRecord::Migration[7.2]
  def change
    change_table :donor_contacts, bulk: true do |t|
      t.references :donor, null: false, foreign_key: { to_table: :users } # rubocop:disable Rails/NotNullColumn
      t.text :note
    end
  end
end

