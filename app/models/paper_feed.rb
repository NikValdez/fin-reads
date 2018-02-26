class PaperFeed < ApplicationRecord

  def self.paper_feed
    feed_urls = [
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[0],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[1],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[2],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[3],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[4],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[5],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[6],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[7],
      Feedjira::Feed.fetch_and_parse("http://www.quantnews.com/feed_type/ssrn/feed/").entries[8]

    ]

  feed_urls.each do |entry|
      unless exists? name: entry.title
        create!(
          name:         entry.title,
          summary:      entry.summary,
          author:       entry.author,
          url:          entry.url,
          published_at: entry.published,
          guid:         entry.id
        )
      end
    end
  end
end
