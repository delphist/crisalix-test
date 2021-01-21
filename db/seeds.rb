# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doctor1 = Doctor.create!(name: 'John A', city: 'Denver')
doctor2 = Doctor.create!(name: 'Peter T', city: 'New York')

patient1 = Patient.create!(name: 'Martin F')
patient2 = Patient.create!(name: 'Shaun D')

User.create!(email: 'doctor1@crisalix.com', password: '123456', profile: doctor1)
User.create!(email: 'doctor2@crisalix.com', password: '123456', profile: doctor2)
User.create!(email: 'patient1@crisalix.com', password: '123456', profile: patient1)
User.create!(email: 'patient2@crisalix.com', password: '123456', profile: patient2)

Appointment.create!(doctor: doctor1, patient: patient1, scheduled_at: Time.zone.now + 1.day)
Appointment.create!(doctor: doctor1, patient: patient2, scheduled_at: Time.zone.now + 2.days)
Appointment.create!(doctor: doctor2, patient: patient2, scheduled_at: Time.zone.now + 3.hours)
