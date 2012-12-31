class CreateBoard2s < ActiveRecord::Migration
  def change
    create_table :board2s do |t|
      t.string :nrows
      t.string :ncolumns
      t.string :percentLive

      t.timestamps
    end
  end
end
