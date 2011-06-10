class Translation < ActiveRecord::Base
      belongs_to :language
      belongs_to :assistance
end
