class AttendanceMailer < ApplicationMailer

  default from: 'jb.vidal@gmail.com'

  def register_email(param_attendee, param_event)
    @my_attendee = param_attendee
    @my_event = param_event
    mail(to: @my_attendee.email, subject: "Inscription à l'événement '#{@my_event.title}' du #{@my_event.start_date} enregistrée !")
  end

  def new_registration_email(param_promoter, param_attendee, param_event)
    @my_promoter = param_promoter
    @my_attendee = param_attendee
    @my_event = param_event
    mail(to: @my_promoter.email, subject: "Nouvelle inscription à l'événement '#{@my_event.title}' du #{@my_event.start_date}")
  end

end
