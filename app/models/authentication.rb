class Authentication < ApplicationRecord
  self.table_name = 'authenticatons'
  belongs_to :user
end