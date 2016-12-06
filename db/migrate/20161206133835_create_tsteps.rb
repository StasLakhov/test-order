class CreateTsteps < ActiveRecord::Migration[5.0]
  def change
    create_table :tsteps do |t|
      t.string :expresult
      t.string :envir
      t.string :author

      t.timestamps
    end
  end
end
