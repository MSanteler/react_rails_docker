class ApplicationController < ActionController::API
  def endpoint
    render json: {hits: [{"foo":"bar"}]}
  end
end
