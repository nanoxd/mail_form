class ContactForm < MailForm::Base
  validates :email, presence: true
  validates :nickname, absence: true
  attributes :name, :email, :message, :nickname

  def headers
    { to: "recipient@example.com", from: self.email }
  end
end
