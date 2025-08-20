class LikePolicy < ApplicationPolicy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end

  def show?
    true
  end

  def new?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def create?
    true
  end

  def destroy?
    user == like.fan
  end
end
