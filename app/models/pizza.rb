class Pizza < ActiveRecord::Base
  belongs_to :order
  belongs_to :size
  belongs_to :crust_type
end
