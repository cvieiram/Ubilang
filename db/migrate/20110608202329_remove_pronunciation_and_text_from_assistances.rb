class RemovePronunciationAndTextFromAssistances < ActiveRecord::Migration
  def self.up
    remove_column :assistances, :pronunciation
    remove_column :assistances, :text
  end

  def self.down
    add_column :assistances, :text, :string
    add_column :assistances, :pronunciation, :string
  end
end
