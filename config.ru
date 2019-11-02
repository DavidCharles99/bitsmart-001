require_relative './config/enviroment'

if ActiveRecord::Migrator.needs_migration?
  raise 'migrations are pending, run `rake db:migrate`'
end

use Rack::methodO
