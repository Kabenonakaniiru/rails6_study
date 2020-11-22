class Area < ApplicationRecord
  has_many :child_areas, class_name: 'Area', foreign_key: 'parent_area_id'
  belongs_to :parent_area, class_name: 'Area', optional: true
end
