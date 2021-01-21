class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :patient
      t.references :doctor

      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
