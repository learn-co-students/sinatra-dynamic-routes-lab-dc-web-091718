require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name]
		@name.reverse
	end

	get '/square/:number' do
		@number = params[:number].to_i
		(@number**2).to_s
	end

	get '/say/:number/:phrase' do
		resp = ''
		@number, @phrase = params[:number].to_i, params[:phrase]
		@number.times do
			resp += @phrase + '\n'
		end
		resp
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@word1 = params[:word1]
		@word2 = params[:word2]
		@word3 = params[:word3]
		@word4 = params[:word4]
		@word5 = params[:word5]

		@word1 + " " +  @word2 + " " +  @word3 + " " +  @word4 + " " +  @word5 + "."
	end

	get '/:operation/:number1/:number2' do

		case params[:operation]
		when "add"
			(params[:number1].to_i + params[:number2].to_i).to_s
		when "subtract"
			(params[:number1].to_i - params[:number2].to_i).to_s
		when "multiply"
			(params[:number1].to_i * params[:number2].to_i).to_s
		when "divide"
			(params[:number1].to_i / params[:number2].to_i).to_s
		end
	end
end
