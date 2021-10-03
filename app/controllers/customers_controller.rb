class CustomersController < ApplicationController

    def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params_customer)
    @customer.save!
  end

  private
    def params_customer
      params.require(:customer).permit(:name)
    end
end
