# UserDecorator
class UserDecorator < Draper::Decorator
  delegate_all

  def member_status_text
    object.pending? ? h.t('users.pending') : h.t('users.member')
  end
end