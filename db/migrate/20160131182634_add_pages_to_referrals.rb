class AddPagesToreferralpages < ActiveRecord::Migration
  def change
    add_column :referralpages, :page_id, :integer
  end
end
