class AddAuthorToBlogFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_feeds, :author, :string
  end
end
