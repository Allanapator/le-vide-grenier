class PaymentsController < ApplicationController
    def new
        @order = current_user.orders.where(state: 'En attente').find(params[:order_id])
    end
end
