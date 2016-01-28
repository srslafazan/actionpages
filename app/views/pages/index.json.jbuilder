json.array!(@pages) do |page|
  json.extract! page, :id, :headline, :color, :buttoncolor, :buttontext
  json.url page_url(page, format: :json)
end
