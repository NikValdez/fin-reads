class Link < ApplicationRecord

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


  end

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

    ]
  end

  def self.paper_feed
    feed_urls = [
      financial_econ = Feedjira::Feed.fetch_and_parse("https://www.journals.elsevier.com/journal-of-financial-economics/rss").entries[0],
      quantpedia = Feedjira::Feed.fetch_and_parse("https://quantpedia.com/Blog/Feed").entries[0],
      academic_oup = Feedjira::Feed.fetch_and_parse("https://academic.oup.com/rss/site_5511/OpenAccess.xml").entries[0],

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
      quantum = Feedjira::Feed.fetch_and_parse("https://quantumfinancier.wordpress.com/feed/").entries[0],
      futures = Feedjira::Feed.fetch_and_parse("http://feeds.feedburner.com/VixFuturesAndOptions").entries[0],
      predictive = Feedjira::Feed.fetch_and_parse("https://predictivealpha.wordpress.com/feed/").entries[0],
      kkb = Feedjira::Feed.fetch_and_parse("http://kkb.io/blog/feed/").entries[0],
      peterwerner = Feedjira::Feed.fetch_and_parse("http://petewerner.blogspot.com/feeds/posts/default").entries[0],
      quantstrat = Feedjira::Feed.fetch_and_parse("https://quantstrattrader.wordpress.com/feed/").entries[0],
      mechanical = Feedjira::Feed.fetch_and_parse("https://mechanicalmarkets.wordpress.com/feed/").entries[0],
    ]

  end

end
