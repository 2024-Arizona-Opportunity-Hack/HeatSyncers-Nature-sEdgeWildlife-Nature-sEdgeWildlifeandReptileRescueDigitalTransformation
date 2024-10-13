class AddDonationBucketToDonations < ActiveRecord::Migration[7.2]
  def change
    change_table :donations do |t|
      t.references :donation_bucket, foreign_key: true
    end
  end
end

