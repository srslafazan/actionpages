class AddSharemessageToReferralPages < ActiveRecord::Migration
  def change
    add_column :referral_pages, :twitter, :string
    add_column :referral_pages, :facebook, :string
  end
end
