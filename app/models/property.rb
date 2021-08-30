class Property < ApplicationRecord
    has_many :stations
    accepts_nested_attributes_for :stations, reject_if: :all_blank, :allow_destroy => true
    validates :property, presence: true
    validates :rent, presence: true
    validates :age, presence: true
    validates :address, presence: true
    validates :remarks, presence: true
end
