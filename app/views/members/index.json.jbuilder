json.array!(@members) do |member|
  json.extract! member, :id, :name, :phone, :address, :date_of_birth, :hometown, :website, :twitter, :instagram, :facebook, :flickr, :pinterest, :linkedin, :joined_on, :where_have_you_been, :where_will_you_go
  json.url member_url(member, format: :json)
end
