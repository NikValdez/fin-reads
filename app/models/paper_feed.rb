class PaperFeed < ApplicationRecord

  def self.paper_feed
    feed_urls = [
      financial_econ = Feedjira::Feed.fetch_and_parse("https://www.journals.elsevier.com/journal-of-financial-economics/rss").entries[0],
      quantpedia = Feedjira::Feed.fetch_and_parse("https://quantpedia.com/Blog/Feed").entries[0],
      academic_oup = Feedjira::Feed.fetch_and_parse("https://academic.oup.com/rss/site_5511/OpenAccess.xml").entries[0],
      cfa_pubs = Feedjira::Feed.fetch_and_parse("https://www.cfapubs.org/action/showFeed?ui=0&mi=3bdplw&ai=t2&jc=rf&type=etoc&feed=rss").entries[0],
      cfa_lit = Feedjira::Feed.fetch_and_parse("https://www.cfapubs.org/action/showFeed?ui=0&mi=3bydyv&ai=12u&jc=rflr&type=etoc&feed=rss").entries[0],
      cfa_mag = Feedjira::Feed.fetch_and_parse("https://www.cfapubs.org/action/showFeed?ui=0&mi=3bdplw&ai=sz&jc=cfm&type=etoc&feed=rss").entries[0],
      journal_of_finance = Feedjira::Feed.fetch_and_parse("http://journal.afajof.org/issue-archive/feed/").entries[0],
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
