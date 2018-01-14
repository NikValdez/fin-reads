class Link < ApplicationRecord

  def self.pcast_feed
  feed_urls = [
    meb = Feedjira::Feed.fetch_and_parse("http://mebfaber.libsyn.com/rss").entries[0],
    real_vision = Feedjira::Feed.fetch_and_parse("http://adventuresinfinance.realvision.libsynpro.com/rss").entries[0],
    animal_spirits = Feedjira::Feed.fetch_and_parse("http://animalspiritspod.libsyn.com/rss" ).entries[0],
    capital_allocators = Feedjira::Feed.fetch_and_parse("http://tedseides.libsyn.com/rss" ).entries[0],
    invest_like_best = Feedjira::Feed.fetch_and_parse("http://investlikethebest.libsyn.com/rss" ).entries[0],
    macro_voices = Feedjira::Feed.fetch_and_parse("http://feeds.macrovoices.com/MacroVoices?format=xml").entries[0],
  ]


  end

  def self.blog_feed
    feed_urls = [
      collab_fund = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/collabfund").entries[0],
      alpha_architect = Feedjira::Feed.fetch_and_parse("https://alphaarchitect.com/feed/").entries[0],
      meb_faber = Feedjira::Feed.fetch_and_parse("http://mebfaber.com/feed/" ).entries[0],
    ]

  end

  def self.paper_feed
    feed_urls = [
      financial_econ = Feedjira::Feed.fetch_and_parse("https://www.journals.elsevier.com/journal-of-financial-economics/rss").entries[0],
    ]

  end

  def self.quant_feed
    feed_urls = [
      financial_econ = Feedjira::Feed.fetch_and_parse("https://www.journals.elsevier.com/journal-of-financial-economics/rss").entries[0],
    ]

  end

end
