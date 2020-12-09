module CurrentCart
    private

    def set_cart
        @cart = Cart.find(session[:cart_id], session[:user_id])
        rescue ActiveRecord::RecordNotFound
        current_user ? @cart = Cart.create(user_id: current_user.id) : @cart = Cart.create
        session[:cart_id] = @cart.id 
    end

end