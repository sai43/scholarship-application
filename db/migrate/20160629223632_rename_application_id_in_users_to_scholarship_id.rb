class RenameApplicationIdInUsersToScholarshipId < ActiveRecord::Migration
  def change
  	rename_column :users, :application_id, :scholarship_id
  end
end
