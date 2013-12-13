class AllInOne < ActiveRecord::Migration
  def self.up
    create_table :dummies do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.boolean  :administrator, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "active"
      t.datetime :key_timestamp
    end
    add_index :users, [:state]

    create_table :relations do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :dummy_id
      t.integer  :related_dummy_id
    end
    add_index :relations, [:dummy_id]
    add_index :relations, [:related_dummy_id]
  end

  def self.down
    drop_table :dummies
    drop_table :users
    drop_table :relations
  end
end
