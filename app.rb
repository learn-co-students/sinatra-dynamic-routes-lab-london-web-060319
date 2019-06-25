require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @username = params[:name]
    "#{@username.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared = @num*@num
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrases = params[:phrase]
    answer = @phrases * @num

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    ([params[:word1]] + [params[:word2]] + [params[:word3]] + [params[:word4]] + [params[:word5]]).join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == 'add'
    @answer =  @num1+@num2
      "#{@answer}"
  elsif params[:operation] == 'subtract'
      @answer = @num1-@num2
      "#{@answer}"
    elsif params[:operation] == 'multiply'
      @answer =@num1*@num2
      "#{@answer}"
    elsif params[:operation] == 'divide'
      @answer = @num1/@num2
      "#{@answer}"
  end
end


end
