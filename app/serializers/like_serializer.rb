class LikeSerializer < ActiveModel::Serializer
    attributes [:activity_id, :user_id, :like]
end