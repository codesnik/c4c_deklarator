class OwnedViaType < ActiveRecord::Base
  validates_presence_of :via, :display_order
end
