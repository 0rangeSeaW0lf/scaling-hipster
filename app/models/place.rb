class Place < ActiveRecord::Base
    validates :name, :description, :address, presence: true
end
