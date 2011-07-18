class AddUpdatedAtColumnToEntries < ActiveRecord::Migration
  def self.up
    add_column :entries, :updated_at, :datetime
  end

  def self.down
    remove_column :entries, :updated_at
  end
end
