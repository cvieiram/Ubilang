class AddLanguageIdFromTranslations < ActiveRecord::Migration
  def self.up
    add_column :translations, :language_id, :integer
  end

  def self.down
    remove_column :translations, :language_id
  end
end
