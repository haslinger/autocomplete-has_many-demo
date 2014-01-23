class AddDateField < ActiveRecord::Migration
  def self.up
    add_column :dummies, :date, :date
  end

  def self.down
    remove_column :dummies, :date
  end
end
