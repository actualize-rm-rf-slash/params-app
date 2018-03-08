class V1::GamesController < ApplicationController
  def guess_query_method
    name = params["input_name"].upcase
    if name.starts_with? "A"
      message = "(your name starts with the first letter...)"
    else
      message = ""
    end
    render json: {message: "Hello #{name}! #{message}"}
  end

  def real_guess_query_method
    winning_number = 23
    input_guess = params["user_guess"].to_i
    if input_guess > winning_number
      output_message = "Pick lower!"
    elsif input_guess < winning_number
      output_message = "Pick higher!"
    else
      output_message = "You win!"
    end
    render json: {message: output_message}
  end
end
