module PostsHelper
  def getRecommendedPosts
    # 募集一覧
    posts = Post.all()

    sectors = []
    # 現在ログインしているユーザの業種一覧
    if current_user && current_user.is_student
      sectors = current_user.student.sectors
    else
      sectors = Sector.all
    end
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
