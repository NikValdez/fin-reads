desc "This task is called by the Heroku scheduler add-on to update rss feeds"
task :update_feed => :environment do
  puts "Updating feeds..."
  BlogFeed.destroy_all
  PcastFeed.destroy_all
  PaperFeed.destroy_all
  QuantFeed.destroy_all
  PcastFeed.pcast_feed
  PaperFeed.paper_feed
  BlogFeed.blog_feed
  QuantFeed.quant_feed
  puts "done."
end
