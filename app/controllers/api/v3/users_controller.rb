module Api
  module V3
    class UsersController < V2::UsersController

      include Api::Version3

      def index
        super
        render :json => @users, :each_serializer => UserSerializer
      end

      def show
        render :json => @user, :serializer => UserSerializer
      end


      def create
        @user = User.new(params[:user])
        @user.save
        if @user.save
          render :json => @user, :serializer => UserSerializer
        else
          render json: {errors: @user.errors}, status: 422
        end
      end

      def update
        if @user.update_attributes(params[:user])
          render :json => @user, :serializer => UserSerializer
        else
          render json: {errors: @user.errors}, status: 422
        end
      end


    end
  end
end
