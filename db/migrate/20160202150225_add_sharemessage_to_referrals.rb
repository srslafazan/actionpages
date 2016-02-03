class AddSharemessageToreferralpages < ActiveRecord::Migration
  def change
    add_column :referralpages, :twitter, :string
    add_column :referralpages, :facebook, :string
  end
end
