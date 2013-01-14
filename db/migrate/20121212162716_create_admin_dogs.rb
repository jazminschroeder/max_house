class CreateAdminDogs < ActiveRecord::Migration
  def change
    create_table :admin_dogs do |t|

      t.timestamps
    end
  end
end
