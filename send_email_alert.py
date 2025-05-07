import smtplib
from email.mime.text import MIMEText

sender = "powerpbox@gmail.com"
receiver = "powerpbox@gmail.com"
subject = "API Usage Alert"
body = "Warning: API usage nearing limit!"

msg = MIMEText(body)
msg['Subject'] = subject
msg['From'] = sender
msg['To'] = receiver

try:
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login(sender, 'YOUR_EMAIL_PASSWORD')
    server.sendmail(sender, receiver, msg.as_string())
    server.quit()
    print("Email alert sent successfully!")
except Exception as e:
    print(f"Error sending email: {e}")
