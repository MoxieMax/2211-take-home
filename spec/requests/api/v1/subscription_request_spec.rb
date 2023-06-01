class Api::V1::SubscriptionsController < ApplicationController
  
  
  private
  
    def sub_params
      params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
    end
  
end