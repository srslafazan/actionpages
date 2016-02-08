class AddPagesToReferralPages < ActiveRecord::Migration
  def change
    add_column :referral_pages, :page_id, :integer
  end
end
