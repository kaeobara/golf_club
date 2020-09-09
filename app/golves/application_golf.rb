class ApplicationGolf < ActiveGolf::Base
  # Automatically retry golves that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most golves are safe to ignore if the underlying records are no longer available
  # discard_on ActiveGolf::DeserializationError
end
