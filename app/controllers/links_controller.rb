class LinksController < ApplicationController
  def index
    @podcasts = Link.pcast_feed
    @papers = Link.paper_feed
    @blogs = Link.blog_feed
  end
end
