class LinksController < ApplicationController
  def index
    @podcasts = PcastFeed.all.order("published_at DESC")
    @papers = PaperFeed.all.order("published_at DESC")
    @blogs = BlogFeed.all.order("published_at DESC")
    @quants = QuantFeed.all.order("published_at DESC")
    @contact = Contact.new
  end
end
