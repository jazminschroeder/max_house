class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :nickname
      t.references :breed
      t.integer :age

      t.timestamps
    end
    add_index :dogs, :breed_id
  end
end
