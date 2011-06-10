class AddLanguageIdToAssistances < ActiveRecord::Migration
  def self.up
    add_column :assistances, :language_id, :integer
  end

  def self.down
    remove_column :assistances, :language_id
  end
end
