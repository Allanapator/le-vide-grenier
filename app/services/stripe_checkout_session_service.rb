class StripeCheckoutSessionService
    def call(event)
        order = Order.find_by(checkout_session_id: event.data.object.id)
        order.update(state: 'Payée')
        cart_id = order.cart.id
        cart = Cart.find_by(id: cart_id)
        cart.destroy
    end
end