class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string :code
      t.string :name
      t.timestamps
    end
    
    Language.create :code=>'en', :name=>'English'
    Language.create :code=>'sp', :name=>'Spanish'
  end

  def self.down
    drop_table :languages
  end
end
