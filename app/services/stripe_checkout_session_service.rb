class StripeCheckoutSessionService
    def call(event)
        order = Order.find_by(amount_cents: 60000)
        order.update(state: 'Paid')
        # order = Order.where(checkout_session_id: event.data.object.id)
        # @order.update(state: 'Paid'
    end
end