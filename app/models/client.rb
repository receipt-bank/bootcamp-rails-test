class Client < ApplicationRecord
    has_one :user

    validates :name, presence: true
    validates :provider, presence: true
    validates :business_type, presence: true
end
