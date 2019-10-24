require 'faker'
Doctor.destroy_all #détruit les BDD existantes
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
City.destroy_all
puts "tout a été détruit"

5.times do 
	City.create!(name: Faker::Address.city)
end
puts "ok ville"

50.times do 
	Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id) #sans specialty
	Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  city_id: City.all.sample.id)

end
puts "ok pour medecins et patients"

35.times do
	Appointment.create!(date: Faker::Date.in_date_period, doctor_id: Doctor.all.sample.id,patient_id: Patient.all.sample.id, city_id: City.all.sample.id) #prend un parmis l'array all
end

puts "ok pour les rdv"

Specialty.create(name: "cardiologie")
Specialty.create(name: "chirurgie")
Specialty.create(name: "endocrinologie")
Specialty.create(name: "gyneco")
Specialty.create(name: "hématologue")
Specialty.create(name: "pediatrie")


puts "ok pour les specialités"

30.times do 
	DoctorSpecialty.create!(specialty_id: Specialty.all.sample.id, doctor_id: Doctor.all.sample.id) #prend un parmis l'array all
end
puts "ok pour les docteurs/spec"