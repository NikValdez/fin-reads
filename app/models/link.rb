class Link < ApplicationRecord

  def self.pcast_feed
  feed_urls = [
    meb = FeedParser::Parser.parse( "http://mebfaber.libsyn.com/rss" ).items[0],
    real_vision = FeedParser::Parser.parse( "http://adventuresinfinance.realvision.libsynpro.com/rss" ).items[0],
    animal_spirits = FeedParser::Parser.parse( "http://animalspiritspod.libsyn.com/rss" ).items[0],
    capital_allocators = FeedParser::Parser.parse( "http://tedseides.libsyn.com/rss" ).items[0],
    invest_like_best = FeedParser::Parser.parse( "http://investlikethebest.libsyn.com/rss" ).items[0],
    macro_voices = FeedParser::Parser.parse( "http://feeds.macrovoices.com/MacroVoices?format=xml" ).items[0],
  ]

  end

  def self.blog_feed
    feed_urls = [
      collab_fund = FeedParser::Parser.parse( "http://feeds.feedburner.com/collabfund" ).items[0],
      alpha_architect = FeedParser::Parser.parse( "https://alphaarchitect.com/feed/" ).items[0],
      meb_faber = FeedParser::Parser.parse( "http://mebfaber.com/feed/" ).items[0],
    ]

  end

  def self.paper_feed
    feed_urls = [
      financial_econ = FeedParser::Parser.parse( "https://www.journals.elsevier.com/journal-of-financial-economics/rss" ).items[0],
    ]

  end

end
