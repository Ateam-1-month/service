class SandboxController < ApplicationController

  def index
    @user = User.new
  end

  def create

    @user = User.new(user_params)

    if @user.save
      uri = URI.parse("https://c-bonds-styk.herokuapp.com/ateam/mail/sender")
      req = Net::HTTP::Post.new(uri)
      req.body = {"email" => @user.email, "token" => "http://localhost:3000/account_activations/#{@user.activation_token}/edit?email=#{CGI.escape(@user.email)}" }.to_json
  
      req_options = {
        use_ssl: uri.scheme = "https" 
      }
  
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(req)
      end
      redirect_to '/'
    else
      render 'index'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end