class AddAuthorToQuantFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :quant_feeds, :author, :string
  end
end
