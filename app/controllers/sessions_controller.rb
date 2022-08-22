class SessionsController < ApplicationController
  def new
  end

  def create
     @body = RestClient.post "https://blogs-rest-api.herokuapp.com/api/v1/auth/login?email=#{params[:email]}&password=#{params[:password]}",
     @headers = {accept: :json,  'x-api-key' => ENV["SYGIC_API_KEY"]}
     
     @body = JSON.parse(@body)
     
     if @body.empty? == false
      render json: @body
     end

     
     
     rescue RestClient::Unauthorized => exception
      render json: "Invalid email/password"
      return
      

     
    
  end 

  def destroy
  end 
  
end
