require "usershell/version"
require "usershell/user_not_found_error"
require 'rbconfig'

module UserShell
  # Get the shell path for the specified user, defaults to current user
  #
  # @param user [String] optional The target user 
  def self.path(user=nil)
    user ||='`whoami`'
    user_id = %x(id -u #{user}).to_i
    raise UserNotFoundError.new('User not found.') unless user_id > 0

    if RbConfig::CONFIG['host_os'] =~ /darwin|mac os/
      shell = %x(dscl . -read /Users/#{user} UserShell)
      shell.split(/\s/).last
    else
      shell = %x(getent passwd #{user})
      shell.split(':').last.strip
    end
  end
end