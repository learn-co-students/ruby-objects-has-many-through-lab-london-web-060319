
class Appointment
    @@all = []
    attr_reader(:doctor, :patient)

    def initialize(date = "Monday, August 1st", patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
end
