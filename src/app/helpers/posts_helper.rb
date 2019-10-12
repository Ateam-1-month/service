module PostsHelper
  def getRecommendedPosts
    posts = Post.all()
    sectors = current_user.student.sectors
    for post in posts do
      if !sectors.any? {|i| post.sectors.include?(i)}
        posts.pop(posts.index(post))
      end
    end
    posts
  end
end
