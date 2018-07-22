class Category < ApplicationRecord
    has_many :event_categories
    has_many :meetupp_category
    has_many :events, through: :event_categories
end
