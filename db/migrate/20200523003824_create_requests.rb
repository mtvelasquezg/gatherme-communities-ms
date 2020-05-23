class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :user
      t.string :state
      t.references :comunity, foreign_key: true

      t.timestamps
    end
  end
end
