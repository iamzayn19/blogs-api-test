class BlogsController < ApplicationController
  def index
    @body = RestClient.get "https://blogs-rest-api.herokuapp.com/api/v1/blogs",
    @headers = {accept: :json,  'x-api-key' => ENV["SYGIC_API_KEY"]}
    @body = JSON.parse(@body)
  end

  def show
    byebug
  end 

  def search_blog
    @body = RestClient.get "https://blogs-rest-api.herokuapp.com/api/v1/blogs/#{params[:id]}",
    @headers = {accept: :json,  'x-api-key' => ENV["SYGIC_API_KEY"]}
    @body = JSON.parse(@body)
  end
end
