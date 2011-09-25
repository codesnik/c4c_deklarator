class DeclarationsController < InheritedResources::Base
  before_filter :authenticate_user!
  load_and_authorize_resource

  def new
    @declaration = Declaration.new

    @declaration.declared_incomes.build
    @declaration.declared_transports.build
    @declaration.declared_real_estates.build

    new!
  end

end
