class Subscriber < ActiveRecord::Base
	belongs_to :subscriberable, polymorphic: true
    belongs_to :page
    belongs_to :referralpage
#	belongs_to :referrer, :class_name => "Subscriber", :foreign_key => "referrer_id"
#   has_many :referrals, :class_name => "Subscriber", :foreign_key => "referrer_id"
    

    validates :email, :uniqueness => true, :format => { :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i, :message => "Invalid email format." }
    #validates :referral_code, :uniqueness => true

    #before_create :create_referral_code
   private

    # def create_referral_code
    #     referral_code = SecureRandom.hex(5)
    #     @collision = Subscriber.find_by_referral_code(referral_code)

    #     while !@collision.nil?
    #         referral_code = SecureRandom.hex(5)
    #         @collision = Subscriber.find_by_referral_code(referral_code)
    #     end

    #     self.referral_code = referral_code
    # end

end
