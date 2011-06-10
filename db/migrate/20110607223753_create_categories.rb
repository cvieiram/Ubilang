class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :description

      t.timestamps
    end
    
    Category.reset_column_information
    Category.create(:description => 'Translation') 
    Category.create(:description => 'Products') 
    Category.create(:description => 'Etiquette') 
    Category.create(:description => 'Classification') 
  end

  def self.down
    drop_table :categories
  end
end
