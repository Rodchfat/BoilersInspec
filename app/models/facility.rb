class Facility < ActiveRecord::Base
    has_many :boilers, dependent: :destroy
end
