class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :description
      t.string :instruction

      t.timestamps
    end
  end
end
