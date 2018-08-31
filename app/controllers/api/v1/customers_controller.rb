class API::V1::CustomersController < API::ApplicationController
  def index
    @customers = Customer.all
  end
end
