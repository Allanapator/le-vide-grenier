class StripeCheckoutSessionService
    def call(event)
        raise
        order = Order.find_by(checkout_session_id: event.data.object.id)
        order.update(state: 'Paid')
    end
end