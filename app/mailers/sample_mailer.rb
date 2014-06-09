class SampleMailer < ActionMailer::Base
  def roflcopter
    mail :subject => "Mandrill rides the Rails!",
         :to      => "oscartheduck@gmail.com",
         :from    => "mailer@importance.jamandbees.net"
  end
end
