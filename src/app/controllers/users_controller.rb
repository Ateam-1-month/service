class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    develop = "http://localhost:3000"
    app = "http://a.intern.ate.am:3000"

    if @user.save
      uri = URI.parse("https://c-bonds-styk.herokuapp.com/ateam/mail/sender")
      req = Net::HTTP::Post.new(uri)
      req.body = {"email" => @user.email, "token" => "#{develop}/account_activations/#{@user.activation_token}/edit?email=#{CGI.escape(@user.email)}" }.to_json
  
      req_options = {
        use_ssl: uri.scheme = "https" 
      }
  
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(req)
      end
      redirect_to '/users/new'
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end