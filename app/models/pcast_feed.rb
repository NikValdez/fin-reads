class PcastFeed < ApplicationRecord

  def self.pcast_feed
    feed_urls = [
      meb = Feedjira::Feed.fetch_and_parse("http://mebfaber.libsyn.com/rss").entries[0],
      real_vision = Feedjira::Feed.fetch_and_parse("http://adventuresinfinance.realvision.libsynpro.com/rss").entries[0],
      animal_spirits = Feedjira::Feed.fetch_and_parse("http://animalspiritspod.libsyn.com/rss" ).entries[0],
      capital_allocators = Feedjira::Feed.fetch_and_parse("http://tedseides.libsyn.com/rss" ).entries[0],
      invest_like_best = Feedjira::Feed.fetch_and_parse("http://investlikethebest.libsyn.com/rss" ).entries[0],
      macro_voices = Feedjira::Feed.fetch_and_parse("http://feeds.macrovoices.com/MacroVoices?format=xml").entries[0],
      disciplined_investor = Feedjira::Feed.fetch_and_parse("https://thedisciplinedinvestor.com/blog/feed/podcast/").entries[0],
      econ_talk = Feedjira::Feed.fetch_and_parse("http://files.libertyfund.org/econtalk/EconTalk.xml").entries[0],
      epsilon = Feedjira::Feed.fetch_and_parse("http://www.epsilontheory.com/category/podcast/feed/").entries[0],
      masters_in_business = Feedjira::Feed.fetch_and_parse("https://feeds.bloomberg.fm/BLM8864403288").entries[0],
      dirt_cast = Feedjira::Feed.fetch_and_parse("http://monthlydirtcast.libsyn.com/rss").entries[0],
      odd_lots = Feedjira::Feed.fetch_and_parse("https://feeds.bloomberg.fm/BLM2009837477").entries[0],
      trend_following = Feedjira::Feed.fetch_and_parse("http://www.trendfollowingradio.com/rss").entries[0],
      trillions = Feedjira::Feed.fetch_and_parse("http://feeds.megaphone.fm/BLM4711075323").entries[0],
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
