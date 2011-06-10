class AddAssistanceIdFromTranslations < ActiveRecord::Migration
  def self.up
    add_column :translations, :assistance_id, :integer
  end

  def self.down
    remove_column :translations, :assistance_id
  end
end
