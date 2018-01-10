class LinksController < ApplicationController
  def index
    @podcasts = Link.pcast_feed
    @papers = Link.paper_feed
    @blogs = Link.blog_feed
    @quants = Link.quant_feed
    @contact = Contact.new
  end
end
