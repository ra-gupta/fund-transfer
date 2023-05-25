class OtpMailer < ApplicationMailer
  
  default from: 'fundtransfer@example.com'
  
  # Send's otp the user
  def send_otp
    
    mail(to: @user.email, subject: 'OTP')
  end
  
end
