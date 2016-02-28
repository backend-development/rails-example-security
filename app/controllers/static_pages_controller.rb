class StaticPagesController < ApplicationController
  def root
    @articles = Article.all
  end

  def help
  end
end
