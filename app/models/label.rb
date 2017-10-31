class Label < ApplicationRecord
  include SearchableByName
  # def self.search(term)
  #   where("name LIKE?", "%#{term}%")
  # end
  scope :search, ->(term) {where("name LIKE?", "%#{term}%")}
end
