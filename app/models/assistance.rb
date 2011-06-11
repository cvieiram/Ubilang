class Assistance < ActiveRecord::Base
    belongs_to :country
    belongs_to :site
    belongs_to :category
    has_many :translations
    attr_accessor :lang_or
    attr_accessor :lang_dest
    
end
