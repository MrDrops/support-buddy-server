class CommitmentSerializer < ActiveModel::Serializer
    attributes [:user_id, :activity_id, :commit_time, :completion, :journal]
end