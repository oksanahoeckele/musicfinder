module SearchableByName
  extend ActiveSupport::Concern


 # module ClassMethods
 #    def search(term)
 #      where("name LIKE ?", "%#{term}%")
 #    end
 #  end
 included do
   validates :name, presence: true
   scope :search, ->(term) {where("name LIKE?", "%#{term}%")}
 end
end
