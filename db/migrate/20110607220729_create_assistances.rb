class CreateAssistances < ActiveRecord::Migration
  def self.up
    create_table :assistances do |t|
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :assistances
  end
end
