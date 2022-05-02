class CreateCommitments < ActiveRecord::Migration[5.2]
  def change
    create_table :commitments do |t|
      t.integer :user_id
      t.integer :activity_id
      t.datetime :commit_time
      t.boolean :completion
      t.text :journal

      t.timestamps
    end
  end
end
