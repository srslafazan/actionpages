json.array!(@referralpages) do |referralpage|
  json.extract! referralpage, :id, :navcolor, :rheadline, :rheadlinecolor, :rbackgroundcolor, :rboxcolor, :rcountcolor, :rhow, :rhowcolor, :rightheadline, :rightsub, :rightcolor, :bottomsub, :reward1, :reward2, :reward3, :reward4
  json.url referralpage_url(referralpage, format: :json)
end
