class AddAuthorToPcastFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :pcast_feeds, :author, :string
  end
end
