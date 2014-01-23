class Dummy < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    mydate :date
    timestamps
  end
  attr_accessible :name, :relations, :ralated_dummies, :mydate

  has_many :ralated_dummies, :through => :relations
  has_many :relations, :inverse_of => :dummy, dependent: :destroy, :accessible => true

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
