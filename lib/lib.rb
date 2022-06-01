def log(msg)
  return if msg.nil?

  puts "\n\n[#{DateTime.now}] #{msg}\n\n"
end

def error_string(e)
  error   = e.respond_to?(:error) ? e.error : e
  message = error.respond_to?(:message) ? error.message : "(no message)" 
  code    = error.respond_to?(:code) ? error.code : "(no code)"

  "Code #{code} Message #{message}"
end
