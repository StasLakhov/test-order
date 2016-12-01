class CreateTobjects < ActiveRecord::Migration[5.0]
  def change
    create_table :tobjects do |t|

      t.timestamps
    end
  end
end
