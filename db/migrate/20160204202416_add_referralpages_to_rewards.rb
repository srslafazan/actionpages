class AddReferralpagesToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :referralpage_id, :integer
  end
end
