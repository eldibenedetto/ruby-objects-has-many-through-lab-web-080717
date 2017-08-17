class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment) #instance of appointment
    appointment.patient = self
    @appointments << appointment
  end

  def doctors
    @appointments.map do |appointment|
      appointment.doctor
    end
  end

end
