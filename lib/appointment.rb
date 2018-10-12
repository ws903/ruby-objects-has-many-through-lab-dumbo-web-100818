class Appointment
	attr_reader(:patient, :doctor, :date)
	@@all = []

	def initialize(patient, doctor, date)
		@patient = patient
		@doctor = doctor
		@date = date
		@@all.push(self)
	end

	def self.all
		@@all
	end
end