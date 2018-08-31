class API::V1::ProfileController < API::ApplicationController
  def index
    @customer = Customer.find_by(email: 'marcio.braga@minhaempresa.com.br')
  end
end
