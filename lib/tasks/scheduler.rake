desc "This task is called by the Heroku scheduler add-on to update rss feeds"
task :update_feed => :environment do
  puts "Updating feeds..."
  PcastFeed.pcast_feed
  BlogFeed.blog_feed
  QuantFeed.quant_feed
  PaperFeed.paper_feed
  puts "done."
end
