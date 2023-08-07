class CreateFacebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :facebooks do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
