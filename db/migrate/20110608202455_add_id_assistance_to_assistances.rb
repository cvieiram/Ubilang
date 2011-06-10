class AddIdAssistanceToAssistances < ActiveRecord::Migration
  def self.up
    add_column :assistances, :cod_assistance, :string
  end

  def self.down
    remove_column :assistances, :cod_assistance
  end
end
