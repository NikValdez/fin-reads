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
      quantpedia = Feedjira::Feed.fetch_and_parse("https://quantpedia.com/Blog/Feed").entries[0],

    ]

  end

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

    ]

  end

end
