class AddPaperclipToReferral < ActiveRecord::Migration
  def change
  	add_attachment :referrals, :image
  end
end
