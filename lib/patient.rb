class Patient
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointments.all.select {|appointment| appointment.patient ==self}
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
end