class AddPaperclipToReferralPage < ActiveRecord::Migration
  def change
  	add_attachment :referral_pages, :image
  end
end
