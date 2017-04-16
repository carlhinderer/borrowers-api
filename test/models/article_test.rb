require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'requires name'  do
  	article = Article.new
  	assert_not article.save, 'Saved article without name'
  	assert_not_empty article.errors[:name]
  end
end
