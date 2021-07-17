class Book < ApplicationRecord
  self.table_name = "people"
  self.primary_key = "age"
end
