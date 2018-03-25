class BlogFeed < ApplicationRecord
  def self.blog_feed
    feed_urls = [
      collab_fund = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/collabfund").entries[0],
      alpha_architect = Feedjira::Feed.fetch_and_parse("https://alphaarchitect.com/feed/").entries[0],
      meb_faber = Feedjira::Feed.fetch_and_parse("http://mebfaber.com/feed/" ).entries[0],
      josh_brown = Feedjira::Feed.fetch_and_parse("http://thereformedbroker.com/feed/" ).entries[0],
      michael_batnick = Feedjira::Feed.fetch_and_parse("http://theirrelevantinvestor.com/feed/" ).entries[0],
      ritholtz = Feedjira::Feed.fetch_and_parse("http://ritholtz.com/feed/" ).entries[0],
      ben_carlson = Feedjira::Feed.fetch_and_parse("http://awealthofcommonsense.com/feed/" ).entries[0],
      tony_isola = Feedjira::Feed.fetch_and_parse("http://tonyisola.com/feed/" ).entries[0],
      newfound = Feedjira::Feed.fetch_and_parse("https://www.thinknewfound.com/feed" ).entries[0],
      farnam = Feedjira::Feed.fetch_and_parse("https://www.farnamstreetblog.com/feed/" ).entries[0],
      phil_econ = Feedjira::Feed.fetch_and_parse("http://www.philosophicaleconomics.com/feed/" ).entries[0],
      value_walk = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/ValueWalkFeed" ).entries[0],
      jason_zwieg = Feedjira::Feed.fetch_and_parse("http://jasonzweig.com/feed/" ).entries[0],
      abnormal_returns = Feedjira::Feed.fetch_and_parse("https://abnormalreturns.com/feed/" ).entries[0],
      investor_field_guide = Feedjira::Feed.fetch_and_parse("http://investorfieldguide.com/feed/" ).entries[0],
      fortune = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/FortuneFinancialBlog" ).entries[0],
      dollars_data = Feedjira::Feed.fetch_and_parse("https://ofdollarsanddata.com/feed" ).entries[0],
      dan_egan = Feedjira::Feed.fetch_and_parse("http://www.dpegan.com/feed/" ).entries[0],
      intrinsic_investing = Feedjira::Feed.fetch_and_parse("https://intrinsicinvesting.com/feed/" ).entries[0],
      yardeni = Feedjira::Feed.fetch_and_parse("http://blog.yardeni.com/feeds/posts/default" ).entries[0],
      newfoundBlog = Feedjira::Feed.fetch_and_parse("https://blog.thinknewfound.com/feed/").entries[0],
      twentyFiveIq = Feedjira::Feed.fetch_and_parse("https://25iq.com/feed/").entries[0],
    ]

    feed_urls.each do |entry|
      unless exists? guid:  entry.id
        create!(
          name:         entry.title,
          summary:      entry.summary,
          url:          entry.url,
          author:       entry.author,
          published_at: entry.published,
          guid:         entry.id
        )
      end
    end
  end
end
