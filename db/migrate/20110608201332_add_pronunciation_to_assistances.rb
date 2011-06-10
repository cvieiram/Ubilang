class AddPronunciationToAssistances < ActiveRecord::Migration
  def self.up
    add_column :assistances, :pronunciation, :string
  end

  def self.down
    remove_column :assistances, :pronunciation
  end
end
