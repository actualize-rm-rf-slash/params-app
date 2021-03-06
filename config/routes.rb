Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/query_params_url" => "params_examples#query_params_method"
  get "/url_segment_url/:input_something" => "params_examples#url_segment_method"

  namespace :v1 do
    get "/guess_query_url" => "games#guess_query_method"
    get "/real_guess_query_url" => "games#real_guess_query_method"
    get "/real_guess_url_segment_url/:user_guess" => "games#real_guess_query_method"
  end
end
