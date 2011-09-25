class Declaration < ActiveRecord::Base
  belongs_to :declaration_type
  belongs_to :office
  belongs_to :person

  has_many :declared_incomes
  has_many :declared_real_estates
  has_many :declared_transports

  validates_presence_of :person_id, :name, :declaration_type_id, :published_at, :for_year

  accepts_nested_attributes_for :person

  accepts_nested_attributes_for :declared_incomes, :allow_destroy => true
  accepts_nested_attributes_for :declared_real_estates, :allow_destroy => true
  accepts_nested_attributes_for :declared_transports, :allow_destroy => true
end
