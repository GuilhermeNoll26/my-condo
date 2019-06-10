class Apartament < ApplicationRecord
  belongs_to :person_tenant, :class_name => 'Person'
  belongs_to :person_owner, :class_name => 'Person'
  #enum number: { active: 0, archived: 1 }
end
