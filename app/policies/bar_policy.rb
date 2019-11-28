class BarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def map?
    return true
  end

  def my_bar?
    return true
  end
end
