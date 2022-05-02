class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :activity
      t.integer :age
      t.string :mobility
      t.integer :friends
      t.text :equipment
      t.text :location
      t.time :time_todo
      t.text :info

      t.timestamps
    end
  end
end
