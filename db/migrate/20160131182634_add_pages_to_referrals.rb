class AddPagesToReferrals < ActiveRecord::Migration
  def change
    add_column :referrals, :page_id, :integer
  end
end
