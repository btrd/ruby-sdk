require_relative 'init'

# To show the request logs, simply replace the client instantiation
# with moltin = Moltin::Client.new(logger: Logger.new(STDOUT))
moltin = Moltin::Client.new

begin
  ap '---------------------------'
  ap 'Retrieve all the settings...'
  settings = moltin.settings.all.data
  ap settings

  ap '---------------------------'
  ap 'Update a setting...'
  settings = moltin.settings.update(page_length: 200)
  ap settings

  ap '---------------------------'
  ap 'Reset the page length...'
  settings = moltin.settings.update(page_length: 100)
  ap settings

rescue => e
  ap 'Something went wrong.'
  ap e
end