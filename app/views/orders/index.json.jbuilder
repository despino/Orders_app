json.array!(@orders) do |order|
  json.extract! order, :id, :Restaurant, :Menu_Item, :Alterations, :Diner
  json.url order_url(order, format: :json)
end
