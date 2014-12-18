class CreateQuandaries < ActiveRecord::Migration
  def change
    create_table :quandaries do |t|
      t.string :title
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
