class Appointment
  attr_accessor :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    @@all.select{|patient| patient.appointment == self}
  end

  def doctor
    @@all.select{|patient| patient.doctor == self}
  end

end
