json.array!(@group_members) do |group_member|
  json.extract! group_member, :id, :name, :group_id
  json.url group_member_url(group_member, format: :json)
end
