class CreateTcases < ActiveRecord::Migration[5.0]
  def change
    create_table :tcases do |t|
      t.string :title
      t.string :summary

      t.timestamps
    end
  end
end
