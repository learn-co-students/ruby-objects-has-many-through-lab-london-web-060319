class Patient

    @@all = []

    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        appointments.collect{|appointment| appointment.doctor}
    end

end