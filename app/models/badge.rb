class Badge < ApplicationRecord
  belongs_to :profile, :dependent => :delete
end
