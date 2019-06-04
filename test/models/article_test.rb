require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "fixture valid" do
    @article = articles(:one)
    assert @article.valid?
  end
end
