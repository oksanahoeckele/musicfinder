class Album < ApplicationRecord
  def self.search(term)
    where("name LIKE?", "%#{term}%")
  end
end
