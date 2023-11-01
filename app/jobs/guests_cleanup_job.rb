class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Guest cleanup job is running fine "
  end
end
