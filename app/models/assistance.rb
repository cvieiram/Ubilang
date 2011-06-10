class Assistance < ActiveRecord::Base
    belongs_to :country
    belongs_to :site
    belongs_to :category
    has_many :translations
    
      
end
