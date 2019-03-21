class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def doctors
    self.appointments.collect {|app| app.doctor}
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  #class methods
  def self.all
    @@all
  end
end
