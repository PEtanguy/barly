class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end

  def list?
    return true
  end

  def show?
    record.user == user
  end
end
