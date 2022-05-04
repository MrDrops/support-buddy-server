class RenameLikeToLikedInLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column(:likes, :like, :liked)
  end
end
