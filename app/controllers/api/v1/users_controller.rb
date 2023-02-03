module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        @user = current_user
      end
    
      def show
        @user = User.find(params[:id])
      end
    end
  end
end