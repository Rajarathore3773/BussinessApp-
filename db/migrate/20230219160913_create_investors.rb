class CreateInvestors < ActiveRecord::Migration[7.0]
  def change
    create_table :investors do |t|
      t.string :i_name
      t.string :i_email
      t.integer :i_age
      t.integer :i_contact
      t.integer :i_ammount

      t.references :businessman, null: false, foreign_key: true
      t.timestamps
    end
  end
end
