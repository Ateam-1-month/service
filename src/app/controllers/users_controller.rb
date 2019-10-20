class UsersController < ApplicationController

  def student_new
    @user = User.new
  end

  def company_new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    logger.debug('###############')
    logger.debug(@user)
    logger.debug(user_params)
    logger.debug('###############')

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
      flash[:success] = "まだ本登録はできていません.メールをご確認ください"
      redirect_to '/'
    else
      if @user.is_company
        render 'company_new'
      else
        render 'student_new'
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :is_company, :is_student)
  end

end