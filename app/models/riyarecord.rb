class RiyaRecord < ApplicationRecord
    self.abstract_class = true
  
    connects_to database: { writing: :riya, reading: :riya}
  end
  