class CreateComunities < ActiveRecord::Migration[5.1]
  def change
    create_table :comunities do |t|
      t.string :tag
      t.string :name
      t.string :banner
      t.string :description
      t.string :users
      t.string :administrators

      t.timestamps
    end
  end
end
