class ApplicationController < ActionController::API
  def endpoint
    render json: {hits: [{"foo":"bar"}]}
  end
  def ingredients
    render json: {ingredients: {
        salad: 0,
        bacon: 7,
        cheese: 0,
        meat: 0
      }
    }
  end
end
