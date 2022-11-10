# require 'rails_helper'

# RSpec.describe Product, type: :model do
#   describe 'Validations' do

#     it 'should create product is all feilds validated' do
#       @category = Category.new
#       @product = Product.new(name: "Plant", price: "24", quantity: "5", category: @category)
#       @product.save
#       expect(@product).to be_valid
#     end 

#     it 'should not create product if name is empty' do
#       @category = Category.new(name: "Trees")
#       @product = Product.new(name: nil, price: "24", quantity: "5", category: @category)
#       expect(@product).to_not be_valid
#       expect(@product.errors.full_messages).to include("Name can't be blank")
#     end 

#     it 'should not create product if price is empty' do
#       @category = Category.new(name: "Trees")
#       @product = Product.new(name: "Plant", price_cents: nil, quantity: "5", category: @category)
#       expect(@product).to_not be_valid
#       expect(@product.errors.full_messages).to include("Price can't be blank")
#     end 

#     it 'should not create product if quantity is empty' do
#       @category = Category.new
#       @product = Product.new(name: "Plant", price: "24", quantity: nil, category: @category)
#       expect(@product).to_not be_valid
#       expect(@product.errors.full_messages).to include("Quantity can't be blank")
#     end 

#     it 'should not create product if category is empty' do
#       @category = Category.new
#       @product = Product.new(name: "Plant", price: "24", quantity: "24", category: nil)
#       expect(@product).to_not be_valid
#       expect(@product.errors.full_messages).to include("Category can't be blank")
#     end 
#   end
# end
