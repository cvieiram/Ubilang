class RemoveIdLanguagetFromAssistances < ActiveRecord::Migration
  def self.up
    remove_column :assistances, :language_id
  end

  def self.down
    add_column :assistances, :language_id, :integer
  end
end
