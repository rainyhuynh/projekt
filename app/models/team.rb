class Team < ApplicationRecord
    has_many :projects, dependent: :destroy
    has_many :users

    ## To create a team I need nested forms in which I can invite users. This is what allows us to do such a thing.
    accepts_nested_attributes_for :users, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
end
