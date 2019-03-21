class Appointment
  attr_reader :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  #class methods
  def self.all
    @@all
  end
end
