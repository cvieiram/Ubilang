class RemoveIdLanguagetAndIdAssistanceFromTranslations < ActiveRecord::Migration
  def self.up
    remove_column :translations, :id_language
    remove_column :translations, :id_assistance
  end

  def self.down
    add_column :translations, :id_assistance, :string
    add_column :translations, :id_language, :integer
  end
end
