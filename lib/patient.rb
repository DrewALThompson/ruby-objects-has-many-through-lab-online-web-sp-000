class Patient
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointments.all.select {|appointment| appointment.patients ==self}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctors}
  end
end