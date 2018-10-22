class CreateReportars < ActiveRecord::Migration[5.2]
  def change
    create_table :reportars do |t|
      t.date :fecha
      t.string :ubicacion
      t.string :obsrvacion
      t.string :imagen

      t.timestamps
    end
  end
end
