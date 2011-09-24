class Declaration < ActiveRecord::Base
  belongs_to :declaration_type
  belongs_to :office
end
