class SessionsController < ApplicationController
  def new
  end

  def create
    @body = RestClient.post "https://blogs-rest-api.herokuapp.com/api/v1/auth/login?email=#{params[:email]}&password=#{params[:password]}",
    @headers = {accept: :json,  'x-api-key' => ENV["SYGIC_API_KEY"]}
    @body = JSON.parse(@body)
    
    if @body.empty? == false
      session[:token] = @body["token"]
      redirect_to blogs_path 
    end

    rescue RestClient::Unauthorized => exception
      flash[:alert] = "Invalid email or password. Please try again!"
      redirect_to new_session_path
    return
  end 

  def destroy
    session[:token] = nil
    redirect_to blogs_path
  end 
  
end
