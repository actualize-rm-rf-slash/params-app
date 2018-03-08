class ParamsExamplesController < ApplicationController
  def query_params_method
    # user_name = params["input_name"]
    # user_age = params["input_age"]
    # render json: {message: "Hello World! Your name is #{user_name} and your age is #{user_age}"}
    render json: {
      message: "Hello World!",
      name_info: "Your name is #{params["input_name"]}",
      age_info: "Your age is #{params["input_age"]}"
    }
  end
end
