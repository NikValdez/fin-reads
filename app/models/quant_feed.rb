class QuantFeed < ApplicationRecord

  def self.quant_feed
    feed_urls = [
      j_kinlay = Feedjira::Feed.fetch_and_parse("http://jonathankinlay.com/feed/").entries[0],
      epchan = Feedjira::Feed.fetch_and_parse("http://epchan.blogspot.com/feeds/posts/default").entries[0],
      quantocracy = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/Quantocracy").entries[0],
      robot_wealth = Feedjira::Feed.fetch_and_parse("https://robotwealth.com/blog/feed/").entries[0],
      quant_edges = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/quantifiableedges/blog").entries[0],
      mktstk = Feedjira::Feed.fetch_and_parse("https://mktstk.com/feed/").entries[0],
      return_risk = Feedjira::Feed.fetch_and_parse("http://www.returnandrisk.com/feeds/posts/default").entries[0],
      scotts = Feedjira::Feed.fetch_and_parse("http://www.scottsinvestments.com/feed/").entries[0],
      qoppac = Feedjira::Feed.fetch_and_parse("https://qoppac.blogspot.com/feeds/posts/default").entries[0],
      css = Feedjira::Feed.fetch_and_parse("https://cssanalytics.wordpress.com/feed/").entries[0],
      trdr = Feedjira::Feed.fetch_and_parse("https://tr8dr.wordpress.com/feed/").entries[0],
      mintegration = Feedjira::Feed.fetch_and_parse("https://mintegration.eu/feed/").entries[0],
      quantum = Feedjira::Feed.fetch_and_parse("https://quantumfinancier.wordpress.com/feed/").entries[0],
      futures = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/VixFuturesAndOptions").entries[0],
      predictive = Feedjira::Feed.fetch_and_parse("https://predictivealpha.wordpress.com/feed/").entries[0],
      kkb = Feedjira::Feed.fetch_and_parse("http://kkb.io/blog/feed/").entries[0],
      peterwerner = Feedjira::Feed.fetch_and_parse("http://petewerner.blogspot.com/feeds/posts/default").entries[0],
      quantstrat = Feedjira::Feed.fetch_and_parse("https://quantstrattrader.wordpress.com/feed/").entries[0],
      mechanical = Feedjira::Feed.fetch_and_parse("https://mechanicalmarkets.wordpress.com/feed/").entries[0],
      wilmot = Feedjira::Feed.fetch_and_parse("https://www.wilmott.com/feed/").entries[0],

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
