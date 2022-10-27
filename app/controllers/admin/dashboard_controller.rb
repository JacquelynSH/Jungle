class Admin::DashboardController < ApplicationController

  def show
    @count_products = Product.all.length
    @count_category = Category.all.length
  end



end
