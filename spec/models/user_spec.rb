require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    
    it 'should create a user' do
      @user = User.new(
        name: "name",
        email: "email@email.com",
        password: "password",
        password_confirmation: "password"
      )

      expect(@user).to be_valid
    end


    it 'should created user a password and password_confirmation' do
        @user = User.new(
          name: "name",
          email: "email@email.com",
          password: "password",
          password_confirmation: "assword"
        )
      @user.save
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'should be created with a password' do
        @user = User.new(
          name: "name",
          email: "email@email.com",
          password: nil,
          password_confirmation: "password"
        )
      @user.save
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    
TO-DO
#  wtf wont this work? 

    # it 'should be created with a password_confirmation' do
    #   @user = User.new(
    #     name: "name",
    #     email: "email@email.com",
    #     password: "password",
    #     password_confirmation: nil
    #   )
    #   @user.save
    #   expect(@user).to_not be_valid
    # end 

    it 'password must be at least 5 characters' do 
      @user = User.new(
        name: "name",
        email: "email@email.com",
        password: "pass",
        password_confirmation: "pass"
      )
      @user.save
      expect(@user.password.length).to_not be > 5
    end

    it 'email should not be empty' do
      @user = User.new(
        name: "name",
        email: nil,
        password: "pass",
        password_confirmation: "password"
      )
      expect(@user).to_not be_valid
    end

    it 'name should not be empty' do
      @user = User.new(
        name: nil,
        email: "email@email.com",
        password: "pass",
        password_confirmation: "password"
      )
      @user.save
      expect(@user).to_not be_valid
    end

 TO-DO 
# check to see is email being added is already in use - should be invalid
# check case sensitivity u vs U - should stil be valid 
# check if spaces(before and after) are added when user types in email, - should still be valid 
# call mentor - Ask about authentication

    # it 'email should not already exist, case sensitive' do
    #   @user = User.new(
    #     name: "name",
    #     email: "email@email.com",
    #     password: "password",
    #     password_confirmation: "password"
    #   )
    #   expect(@user).to_not be_valid
    # end

    describe '.authenticate_with_credentials' do
      @user = User.new(
            name: "name",
            email: "email@email.com",
            password: "password",
            password_confirmation: "password"
          )
          # I dont know what to do with the user authetnication part 
    end

  end 
end
