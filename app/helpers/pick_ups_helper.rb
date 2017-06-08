module PickUpsHelper
  def format_time(timestamp)
    timestamp.strftime("%A, %B %d, %H:%M")
  end
end
