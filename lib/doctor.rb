class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  #class methods
  def self.all
    @@all
  end
end
