class CreateUserRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relations do |t|
      t.belongs_to :follower_id,      :class_name => "User", null: false
      t.belongs_to :followed_id,      :class_name => "User", null: false

      t.timestamps
    end
  end
end
