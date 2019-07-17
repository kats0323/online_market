class BuyerController < ApplicationController
  
    def page
      @item = Item.find(params[:item_id])
      puts 
      @seller = Seller.find(params[:seller_id])
    end
  
    def payment
        
  
        puts "-----payment-----"
        puts params
        
  
      @buyer = Buyer.find_by(profile_id: current_user.profile.id)
  
      @item = Item.find(params[:item_id])
      # link a buyer to the car
      @buyer.items << @item
  
      # populate buyers_sellers table
      @seller = Seller.find(params[:seller_id])
      @buyer.sellers <<  @seller
    
      # redirect back to the car show page
      # car_path(@car.id)
        redirect_to @item, notice: "payment made successfully"
    end
  end
