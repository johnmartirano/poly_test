
class Thingable < ActiveRecord::Base
  self.abstract_class=true

  has_one :container_thing
  has_one :container, through: :container_thing

  accepts_nested_attributes_for :container_thing
  validates_presence_of :container_thing
end

