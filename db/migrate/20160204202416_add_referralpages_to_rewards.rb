class AddReferralPagesToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :referral_page_id, :integer
  end
end
