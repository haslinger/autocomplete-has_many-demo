class RenameToMydate < ActiveRecord::Migration
  def self.up
    rename_column :dummies, :date, :mydate
  end

  def self.down
    rename_column :dummies, :mydate, :date
  end
end
