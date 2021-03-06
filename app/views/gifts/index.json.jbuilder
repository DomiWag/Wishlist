json.array!(@gifts) do |gift|
  json.extract! gift, :id, :title, :url, :image, :description
  json.url gift_url(gift, format: :json)
end
