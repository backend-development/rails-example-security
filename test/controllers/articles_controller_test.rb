require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  fixtures :users
  fixtures :articles

  setup do
    @article = articles(:one)
    @admin   = users(:one)
    @user    = users(:two)
  end

  test 'should get index' do
    get articles_url
    assert_response :success
  end

  test 'public should not get new' do
    get new_article_url
    assert_response :forbidden
  end

  test 'user should get new' do
    sign_in(@user)
    get new_article_url
    assert_response :success
  end

  test 'should create article' do
    sign_in(@user)
    assert_difference('Article.count') do
      post articles_url, params: { article: { description: @article.description, title: @article.title } }
    end

    assert_redirected_to article_path(Article.last)
  end

  test 'should show article' do
    get article_url(@article)
    assert_response :success
  end

  test 'should get edit' do
    get edit_article_url(@article)
    assert_response :success
  end

  test 'should destroy article' do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_path
  end
end
