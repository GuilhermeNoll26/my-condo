class Entry < ApplicationRecord
  belongs_to :cashier, optional:true
  belongs_to :apartament, optional:true
end
