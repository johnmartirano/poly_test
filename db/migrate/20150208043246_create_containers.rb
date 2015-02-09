
class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string     :name
      t.timestamps 
    end

    # using an explicit join table with its corresponding model
    create_table :container_things do |t|
      t.integer  :container_id
      t.integer  :thingable_id
      t.string  :thingable_type
      t.integer  :status, default: 0
      t.string   :name
      t.timestamps 
    end

    create_table :thing1s do |t|
      t.string   :feature1, default: 'one'
      t.string   :name
      t.timestamps 
    end

    create_table :thing2s do |t|
      t.string   :feature2, default: 'two' 
      t.string   :name
      t.timestamps 
    end

    create_table :thing3s do |t|
      t.string   :feature3, default: 'two' 
      t.string   :name
      t.timestamps
    end
  end
end


