class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if User.save
      redirects_to '/groups'
    end
  end

private

def user_params
  params.require(user).permit(:email, :first_name, :last_name, :password_digest, :user_type)
end

end
