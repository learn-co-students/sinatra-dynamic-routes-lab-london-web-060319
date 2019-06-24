require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  # reverse a name
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  # square a number
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  # return a phrase n times
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    result = ""
    @num.times {result << @phrase}
    result
  end

  # concatenate a list of words
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # perform an operation on two numbers
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1+@num2}"
    elsif @operation == "subtract"
      "#{@num1-@num2}"
    elsif @operation == "multiply"
      "#{@num1*@num2}"
    elsif @operation == "divide"
      "#{@num1/@num2}"
    end
  end

end