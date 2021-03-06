class UserOrdersController < ApplicationController

	before_filter :check_user_matches_profile

  def show
     @user = User.find_by_username(params[:username])
     @bought = @user.orders
     @sold = @user.products.sold
  end

  private

	def check_user_matches_profile
  	@user = User.find_by_username(params[:username])
		raise "That's not you!" if current_user != @user
	end

end
