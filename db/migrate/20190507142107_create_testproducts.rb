class CreateTestproducts < ActiveRecord::Migration[5.2]
  def change
    create_table :testproducts do |t|
      t.string :name
      t.timestamps
    end
  end
end
