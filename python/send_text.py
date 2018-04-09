from twilio.rest import Client

# Your Account SID from twilio.com/console
account_sid = "AC68319e964fb7aaf87576f71bd41faf75"
# Your Auth Token from twilio.com/console
auth_token  = "c90d69a90c942e77bd0b64724102123d"

client = Client(account_sid, auth_token)

message = client.messages.create(
    to="+79035922319", 
    from_="+14232121574",
    body="Hello from my huge Python!")

print(message.sid)
