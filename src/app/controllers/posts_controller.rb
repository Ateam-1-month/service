class PostsController < ApplicationController
  include PostsHelper

  before_action -> {
    logged_in_user || company_user?
  }, only: [:new, :create, :edit, :update, :destroy]

  def index
    # 業種一覧
    @sectors = Sector.all()

    # 一番上のやつ
    @posts = Post.first(5)

    # オススメ
    @recommendedPosts = getRecommendedPosts().first(10)

    # 人気上昇中
    @popularPosts = Post.first(10)

    # 新規
    @newPosts = Post.order(created_at: :desc).first(10)
  end

  def search
    # 募集一覧
    posts = Post.all()

    # 業種
    sectors = Sector.where(id: params[:sector_id])

    # 検索結果
    @posts = []
    @sectors = Sector.all

    if sectors.empty?
      # 検索条件がなければ全募集
      @posts = posts
    elsif
      posts.each {|post|
        # 検索条件に一致しているものがあれば追加
        if sectors.any? {|i| post.sectors.include?(i)}
          @posts.push(post)
        end
      }
    end

    @posts
  end

  def list
    # 並び順
    sortOrder = params[:sortOrder].to_i
    @sectors = Sector.all

    if sortOrder == 1
      # 人気
      @posts = Post.all()
    elsif sortOrder == 2
      # 新規
      @posts = Post.order(created_at: :desc)
    else
      # 指定なしまたはオススメ
      @posts = getRecommendedPosts()
    end

    @posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def management
    @post = Post.find(params[:id])
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
