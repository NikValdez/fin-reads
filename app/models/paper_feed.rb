class PaperFeed < ApplicationRecord

  def self.paper_feed
    feed_urls = [
      financial_econ = Feedjira::Feed.fetch_and_parse("https://www.journals.elsevier.com/journal-of-financial-economics/rss").entries[0],
      quantpedia = Feedjira::Feed.fetch_and_parse("https://quantpedia.com/Blog/Feed").entries[0],
      academic_oup = Feedjira::Feed.fetch_and_parse("https://academic.oup.com/rss/site_5511/OpenAccess.xml").entries[0],
    ]


  feed_urls.each do |entry|
      unless exists? guid:  entry.id
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
