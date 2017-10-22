require 'pry'
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
    count = 0
    coupons.each do |key, value|
        if cart.key?(coupons[count][:item]) == true
            if cart[coupons[count][:item]][:count] >= coupons[count][:num]
                cart["#{coupons[count][:item]} W/COUPON"] = {:price => coupons[count][:cost], :clearance => cart[coupons[count][:item]][:clearance], :count => cart[coupons[count][:item]][:count] / coupons[count][:num]}
                cart[coupons[count][:item]][:count] = cart[coupons[count][:item]][:count] - coupons[count][:num]
            end
        end
        count += 1
    end
    puts cart

    cart

end



def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
