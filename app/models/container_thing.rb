
class ContainerThing < ActiveRecord::Base
  belongs_to :container
  belongs_to :thingable, polymorphic: true
end

