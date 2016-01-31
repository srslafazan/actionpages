json.array!(@referrals) do |referral|
  json.extract! referral, :id, :navcolor, :rheadline, :rheadlinecolor, :rbackgroundcolor, :rboxcolor, :rcountcolor, :rhow, :rhowcolor, :rightheadline, :rightsub, :rightcolor, :bottomsub, :reward1, :reward2, :reward3, :reward4
  json.url referral_url(referral, format: :json)
end
