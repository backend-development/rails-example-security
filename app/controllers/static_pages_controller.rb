# static pages.  using root instead of index for the homepage/root page!
class StaticPagesController < ApplicationController
  def root
    @articles = Article.all
  end

  def help
  end
end
