class OrderNotifier < ActionMailer::Base
  default from: "no-reply@example.com"

  def confirmation_email(number_of_items, buyer)
    @number_of_items = number_of_items

  	mail(to: buyer.email, subject: 'Order Confirmation')
  end 
  

  def seller_confirmation_email(product, seller)
    @product = product 
    
  	mail(to: seller.email, subject: 'Item Sold')
  end
  
end