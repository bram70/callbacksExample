class Post < ActiveRecord::Base
  has_many :followers
  after_save :notify_followers

  def notify_followers
    Notifier.post_mailer.deliver
  end
end
