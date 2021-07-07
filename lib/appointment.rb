class Appointment

    attr_writer
    attr_accessor :date, :doctor, :patient
    attr_reader

    @@all = []

    def initialize(patient, doctor, date)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end
end