class ActivitySerializer < ActiveModel::Serializer
    attributes [:id, :category, :activity, :age, :mobility, :friends, :equipment, :location, :time_todo, :info]
end