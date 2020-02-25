class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :description
      t.string :model
      t.string :code
      t.string :sketch

      t.timestamps
    end
  end
end
