class Relation < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  attr_accessible :dummy_id, :related_dummy_id, :dummy, :related_dummy

  belongs_to :dummy
  belongs_to :related_dummy, :class_name => 'Dummy', :foreign_key => 'related_dummy_id'

  # --- Permissions --- #

  def create_permitted?
    true
  end

  def update_permitted?
    true
  end

  def destroy_permitted?
    true
  end

  def view_permitted?(field)
    true
  end

end
