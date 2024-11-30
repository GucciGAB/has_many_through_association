class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.references :Physician, null: false, foreign_key: true
      t.references :Patient, null: false, foreign_key: true
      t.datetime :appointment_date
      t.string :location
      t.string :status
      t.text :note

      t.timestamps
    end
  end
end
