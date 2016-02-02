class AddSharemessageToReferrals < ActiveRecord::Migration
  def change
    add_column :referrals, :twitter, :string
    add_column :referrals, :facebook, :string
  end
end
