class AddImageToBlogFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_feeds, :image, :string
  end
end
