
require_relative './config/environment'

use Rack::Session::Cookie
use SessionsController
use Rack::MethodOverride
run ApplicationController
