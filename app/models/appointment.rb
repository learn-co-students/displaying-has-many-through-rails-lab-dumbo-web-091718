class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  # def appointment_datetime
  #   d = self
  #   d.strftime("%B %e, %Y at %k:%M")
  # end

end
