ec_cart = Ec.Cart.new
adj = Ec.Cart.Adjustment.new("shipping","Shipping", 
    fn(x) -> 
      sb = Ec.Cart.subtotal(x)
      case sb > 25 do
        true -> 0
        _ -> 25
       end
    end
    )
ec_cart = Ec.Cart.add_adjustment(ec_cart,adj)
ec_cart = Ec.Cart.add_item(ec_cart,%Ec.Cart.Item{ ec_sku: "SU04", ec_qty: 10, ec_price: 2 })

