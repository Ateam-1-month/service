class SandboxController < ApplicationController

  def index
    @greeting = "Hi!!!!"
  end

  def create
    logger.debug params[:email].to_yaml
    logger.debug params[:token].to_yaml
    uri = URI.parse("https://c-bonds-styk.herokuapp.com/ateam/mail/sender")
    req = Net::HTTP::Post.new(uri)
    req.body = {"email" => params[:email], "token" => params[:token]}.to_json

    req_options = {
      use_ssl: uri.scheme = "https" 
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(req)
    end

    redirect_to '/'
  end

end