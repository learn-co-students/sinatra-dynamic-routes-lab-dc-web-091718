require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse}!"
  end



  get "/square/:number" do
    @n = params[:number].to_i
    "#{@n*@n}"
  end
  
  
  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    "#{@phrase*(params[:number]).to_i}."
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @name = params[:word1]
    [params[:word1],params[:word1],params[:word1],params[:word1],params[:word1]].join(" ")
  end
  
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    return "#{params[:number1]+}." if @operation=="add"
    "10"
  end

end