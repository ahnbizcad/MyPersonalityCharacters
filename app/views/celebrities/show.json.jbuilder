json.extract! @celebrity, :id, :name, :created_at, :updated_at

json.characters @celebrity.characters do |json, comment|
	json.(character, :id, :name)
end