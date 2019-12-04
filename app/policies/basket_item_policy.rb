class BasketItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
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

  def destroy?
    return true
  end
end
