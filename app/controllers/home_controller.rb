class HomeController < ApplicationController
  def index
    @body = RestClient.post "https://blogs-rest-api.herokuapp.com/api/v1/auth/login?email=zain@gmail.com&password=abc123",
      @headers = {accept: :json,  'x-api-key' => ENV["SYGIC_API_KEY"]}
    @body = JSON.parse(@body)
   
  end
end
