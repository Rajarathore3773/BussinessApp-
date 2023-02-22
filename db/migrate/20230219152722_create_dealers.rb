class CreateDealers < ActiveRecord::Migration[7.0]
  def change
    create_table :dealers do |t|
      t.string :d_name
      t.string :d_email
      t.integer :d_age
      t.integer :d_contact
       
      t.references :businessman, null: false, foreign_key: true

      t.timestamps
    end
  end
end
