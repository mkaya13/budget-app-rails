class CreatePayment < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true, index:true
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
