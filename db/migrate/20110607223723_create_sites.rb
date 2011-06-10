class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :description

      t.timestamps
    end
    
    Site.create :description=> 'Restaurant one'
    Site.create :description=> 'TrainStation one'
    Site.create :description=> 'Park one'
    Site.create :description=> 'University one'
    Site.create :description=> 'Restaurant two'
    Site.create :description=> 'TrainStation two'
    Site.create :description=> 'Park two'
    Site.create :description=> 'University two'
    
  end

  def self.down
    drop_table :sites
  end
end
