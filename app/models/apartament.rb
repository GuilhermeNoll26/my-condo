class Apartament < ApplicationRecord
  belongs_to :person_tenant, :class_name => 'Person', optional:true
  belongs_to :person_owner, :class_name => 'Person', optional:true
end
