class Account < ActiveRecord::Base

	belongs_to :user
	has_many :pages
	has_many :referrals
end
