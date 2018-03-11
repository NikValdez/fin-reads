class PaperFeed < ApplicationRecord

  def self.paper_feed
    feed_urls = [
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[0],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[1],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[2],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[3],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[4],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[5],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[6],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[7],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[8],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[9],
      Feedjira::Feed.fetch_and_parse("http://export.arxiv.org/rss/q-fin").entries[10],

    ]

  feed_urls.each do |entry|
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
