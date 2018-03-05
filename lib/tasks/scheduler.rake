desc "This task is called by the Heroku scheduler add-on to update rss feeds"
task :update_feed => :environment do
  puts "Updating feeds..."
  PcastFeed.destroy_all
  PcastFeed.pcast_feed
  BlogFeed.destroy_all
  BlogFeed.blog_feed
  QuantFeed.destroy_all
  QuantFeed.quant_feed
  PaperFeed.destroy_all
  PaperFeed.paper_feed
  puts "done."
end
