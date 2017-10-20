
class UsersController < ApplicationController


    def get_user_by_nickname
      @user = User.where("email LIKE ?", "%#{params[:nickname]}%").take
      render json: @user
    end
end