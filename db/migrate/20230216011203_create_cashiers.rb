class CreateCashiers < ActiveRecord::Migration[7.0]
  def change
    create_table :cashiers do |t|
      t.string :first_name
      t.string :last_name
      t.string :operator_id

      t.timestamps
    end
  end
end
