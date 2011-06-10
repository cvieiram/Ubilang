class AddCountryIdAndSiteIdAndCategoryIdToAssistances < ActiveRecord::Migration
  def self.up
    add_column :assistances, :country_id, :integer
    add_column :assistances, :site_id, :integer
    add_column :assistances, :category_id, :integer
  end

  def self.down
    remove_column :assistances, :category_id
    remove_column :assistances, :site_id
    remove_column :assistances, :country_id
  end
end
