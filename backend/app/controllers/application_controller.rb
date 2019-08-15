class ApplicationController < ActionController::API
  def endpoint
    render json: {hits: [{"foo":"bar"}]}
  end

  # GET returns default ingredients
  def ingredients
    render json: {
      salad: 0,
      bacon: 0,
      cheese: 0,
      meat: 0
    }
  end

  # POST handle create an order
  def create_order
    render json: {
      "order_a":{
        "ingredients":{
          "salad":1,
          "bacon":1,
          "cheese":1,
          "meat":1
        },
        "price":6.9,
        "orderData":{
          "name":"John Smith",
          "street":"123 Some St",
          "zipCode":"11111",
          "country":"USA",
          "email":"john@test.com",
          "deliveryMethod":"fastest"
        },
      }
    }
  end

  # GET order json
  def orders
    render json: {
      "order_a":{
        "ingredients":{
          "salad":1,
          "bacon":1,
          "cheese":1,
          "meat":1
        },
        "price":6.9,
        "orderData":{
          "name":"John Smith",
          "street":"123 Some St",
          "zipCode":"11111",
          "country":"USA",
          "email":"john@test.com",
          "deliveryMethod":"fastest"
        },
      }
    }
  end
end
