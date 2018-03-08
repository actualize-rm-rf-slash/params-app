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
end
