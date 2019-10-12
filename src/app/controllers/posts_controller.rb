class PostsController < ApplicationController
  include PostsHelper

  def index
    # 業種一覧
    @sectors = Sector.all()

    # 業務内容一覧
    @workContents = WorkContent.all()

    # 一番上のやつ
    @posts = Post.first(5)

    # オススメ
    @recommendedPosts = getRecommendedPosts().first(10)

    # 人気上昇中
    @popularPosts = Post.first(10)

    # 新規
    @newPosts = Post.first(10).order(create_at: :desc)
  end
end
