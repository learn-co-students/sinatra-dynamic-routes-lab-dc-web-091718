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
    [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ")+"."
  end
  
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    # puts params[:number1]
    # puts params[:number2]
    return "#{(params[:number1].to_i)+(params[:number2].to_i)}." if @operation=="add"
    return "#{(params[:number1].to_i)-(params[:number2].to_i)}." if @operation=="subtract"
    return "#{(params[:number1].to_i)*(params[:number2].to_i)}." if @operation=="multiply"
    return "#{(params[:number1].to_i)/(params[:number2].to_i)}." if @operation=="divide"

    "10"
  end

end