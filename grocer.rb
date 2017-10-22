def consolidate_cart(cart)
  # code here
  #[{"AVOCADO"=>{:price=>3.0, :clearance=>true}}, {"KALE"=>{:price=>3.0, :clearance=>false}}]
  cart_items = []
  cart.each do |key|
    key.each do |nkey, val|
      cart_items.push(nkey)
    end
  end

  new_cart = {}

  cart.uniq.each do |key|
    key.each do |nkey, val|
      new_cart[nkey] = val
      new_cart[nkey][:count] = cart_items.count(nkey)
    end
  end

  new_cart

end

def apply_coupons(cart, coupons)
  # code here

        if cart[coupons[:item]][:count] >= coupons[:num]
            cart["#{coupons[:item]} W/COUPON"] = {:price => coupons[:cost], :clearance => cart[coupons[:item]][:clearance], :count => cart[coupons[:item]][:count] - coupons[:num]}
            cart[coupons[:item]][:count] = cart[coupons[:item]][:count] - coupons[:num]
            
        end
  
    cart

end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
