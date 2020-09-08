class Doctor 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  
  def patients
    Appointments.all.collect {|appointments| appointments.doctor == self}
  end
  
end
