class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed discover ]

  def index
    # @users = @q.result
    @users = policy_scope(@q.results)
  end

  def feed
    authorize @user
  end

  def discover
    authorize @user
  end

  def liked
    authorize @user
  end

  def show
    authorize @user
  end

  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end
end
