class Apartament < ApplicationRecord
  belongs_to :person_tenant, :class_name => 'Person'
  belongs_to :person_owner, :class_name => 'Person'
  #has_many :people
end
