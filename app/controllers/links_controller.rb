class LinksController < ApplicationController
  def index
    @podcasts = PcastFeed.all
    @papers = PaperFeed.all
    @blogs = BlogFeed.all
    @quants = QuantFeed.all
    @contact = Contact.new
  end
end
