class Project < ApplicationRecord
    belongs_to :team 
    belongs_to :user 

    accepts_nested_attributes_for :team, reject_if: ->(attributes){ attributes['name'].blank? }
    include PublicActivity::Model
    tracked owner: Proc.new { |controller, model | controller.current_user }
end
