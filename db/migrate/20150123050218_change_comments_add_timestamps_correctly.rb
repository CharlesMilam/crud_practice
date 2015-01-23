class ChangeCommentsAddTimestampsCorrectly < ActiveRecord::Migration
  def change
    remove_column :comments, :timestamps, :datetime
    add_column :comments, :created_at, :datetime
    add_column :comments, :updated_at, :datetime
  end
end
