module CurrentCart
    private

    def set_cart
        @cart = Cart.find(session[:cart_id], session[:user_id])
        rescue ActiveRecord::RecordNotFound
        if current_user
            @cart = Cart.create(user_id: current_user.id)
        else 
            @cart = Cart.create
        end

        if current_user && @cart.user_id.nil?
            @cart.user_id = current_user.id
        end
        session[:cart_id] = @cart.id 
    end

end