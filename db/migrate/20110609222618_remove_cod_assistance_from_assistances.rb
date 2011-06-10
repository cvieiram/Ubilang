class RemoveCodAssistanceFromAssistances < ActiveRecord::Migration
  def self.up
    remove_column :assistances, :cod_assistance
  end

  def self.down
    add_column :assistances, :cod_assistance, :string
  end
end
