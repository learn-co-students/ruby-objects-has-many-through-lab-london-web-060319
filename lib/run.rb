require_relative "appointment.rb"
require_relative "patient.rb"
require_relative "doctor.rb"
require "pry"

jack = Doctor.new("Jack")
kelly = Doctor.new("Kelly")
aruna = Patient.new("Aruna")
annie = Patient.new("Anniemaria")
lawrence = Doctor.new("Lawrence")
scott = Patient.new("Scott")

jack.new_appointment(aruna, "Monday, 1st")
jack.new_appointment(annie, "Friday, 6th")
lawrence.new_appointment(annie,"Monday,15th")



binding.pry
0