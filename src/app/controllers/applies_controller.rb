class AppliesController < ApplicationController
  before_action -> {
    logged_in_user || student_user?
  }, only: [:create]
  
  def create
    apply = Apply.new(post_id: params[:post_id], student_id: params[:student_id])
    if apply.save
      uri = URI.parse("https://c-bonds-styk.herokuapp.com/ateam/mail/apply")
      req = Net::HTTP::Post.new(uri)
      req.body = {"email" => 'aizawadesign13@gmail.com'}.to_json
  
      req_options = {
        use_ssl: uri.scheme = "https" 
      }
  
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(req)
      end
      flash[:success] = "応募しました."
    else
      flash[:danger] = "応募に失敗しました。もう一度応募してください。"
    end
    redirect_to "/posts/#{params[:post_id]}"
  end
end
