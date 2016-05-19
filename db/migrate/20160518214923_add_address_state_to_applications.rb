class AddAddressStateToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :address, :string
    add_column :applications, :state, :string
  end
end
