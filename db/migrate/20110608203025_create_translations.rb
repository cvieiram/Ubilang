class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.string :id_assistance
      t.integer :id_language
      t.string :text
      t.string :pronunciation

      t.timestamps
    end
  end

  def self.down
    drop_table :translations
  end
end
