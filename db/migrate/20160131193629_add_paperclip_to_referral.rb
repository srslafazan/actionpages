class AddPaperclipToreferralpage < ActiveRecord::Migration
  def change
  	add_attachment :referralpages, :image
  end
end
