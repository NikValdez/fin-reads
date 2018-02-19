class CreatePaperFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :paper_feeds do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at
      t.string :guid

      t.timestamps
    end
  end
end
