class PagesController < ApplicationController
  def home
    @articles = Article.all
    @user = User.new
  end
end
