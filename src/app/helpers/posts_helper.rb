module PostsHelper
  def getRecommendedPosts
    # 募集一覧
    posts = Post.all()

    # 現在ログインしているユーザの業種一覧
    sectors = current_user.student.sectors

    # オススメ一覧
    recommendedPosts = []

    posts.each {|post|
      # current_userの業種に一致しているものがあればオススメに追加
      if sectors.any? {|i| post.sectors.include?(i)}
        recommendedPosts.push(post)
      end
    }
    recommendedPosts
  end
end
