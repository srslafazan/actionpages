json.array!(@referral_pages) do |referral_page|
  json.extract! referral_page, :id, :navcolor, :rheadline, :rheadlinecolor, :rbackgroundcolor, :rboxcolor, :rcountcolor, :rhow, :rhowcolor, :rightheadline, :rightsub, :rightcolor, :bottomsub, :reward1, :reward2, :reward3, :reward4
  json.url referral_page_url(referral_page, format: :json)
end
