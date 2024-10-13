class AddDonorToDonations < ActiveRecord::Migration[7.2]
  def change
    add_reference :donations, :donor, null: false, foreign_key: { to_table: :users } # rubocop:disable Rails/NotNullColumn
  end
end

