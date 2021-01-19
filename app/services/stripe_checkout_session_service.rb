class StripeCheckoutSessionService
    def call(event)
        # order = Order.where(checkout_session_id: event.data.object.id)
        @order.update(state: 'Paid')
    end
end