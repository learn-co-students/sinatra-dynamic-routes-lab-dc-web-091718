require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
  	name = params[:name]
  	name.reverse
  end

  get "/square/:number" do 
  	number = params[:number].to_i
  	(number * number).to_s
  end

  get '/say/:number/:phrase' do 
  		number = params[:number].to_i
  		phrase = params[:phrase]
  			str = ""
  		number.times do 
  			str+=phrase.to_s
  		end
	str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 

  str = 	params[:word1].to_s + " " + 
  	params[:word2].to_s + " " + 
  	params[:word3].to_s + " " +
  	params[:word4].to_s + " " +
  	params[:word5].to_s + "." 
	str
  end

  get "/:operation/:number1/:number2" do 
  	
  	op = params[:operation]	
  	num1 = params[:number1].to_i
  	num2 = params[:number2].to_i
  	ans = ""
  	case op
	  	when "add" 
	  		ans = num1+num2 
	  	when "subtract"
	  	 	ans =num1-num2 
	  	when "multiply" 
	  		ans =num1*num2 
	  	when "divide" 
	  		ans =num1/num2 
	  	else
  	end

  	ans.to_s
  		

  end

end