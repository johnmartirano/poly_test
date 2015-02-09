
class Container < ActiveRecord::Base
  has_many :container_things
  has_many :thing1s, through: :container_things, source: :thingable, source_type: "Thing1"
  has_many :thing2s, through: :container_things, source: :thingable, source_type: "Thing2"
  has_many :thing3s, through: :container_things, source: :thingable, source_type: "Thing3"

  def thingables
    return thing1s + thing2s + thing3s
  end
end

