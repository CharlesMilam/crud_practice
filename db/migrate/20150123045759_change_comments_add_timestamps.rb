class ChangeCommentsAddTimestamps < ActiveRecord::Migration
  def change
    add_column :comments, :timestamps, :datetime
  end
end
