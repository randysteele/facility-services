class Client < ApplicationRecord
    has_many :workorders, dependent: :destroy 
end
