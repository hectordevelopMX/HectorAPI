class CreateOperacions < ActiveRecord::Migration[5.2]
  def change
    create_table :operacions do |t|
      t.string :nombre
      t.decimal :radio
      t.decimal :lado
      t.decimal :base
      t.decimal :altura
      t.decimal :area
      t.decimal :perimetro
      t.timestamps
    end
  end
end
