class AddVotesToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :votes, :integer, default: 0
    add_index :dogs, :votes
  end
end
