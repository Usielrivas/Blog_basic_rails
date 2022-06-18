class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
  @article = Article
  end

  def test
  end
end
