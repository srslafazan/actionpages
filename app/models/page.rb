class Page < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "1000X1000" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	belongs_to :user
	has_one :referralpage
	has_many  :subscribers, as: :subscriberable

end
