require 'logger'
logger = Logger.new(STDOUT)

logger.debug "test"
logger.info "test"
logger.fatal "test"

logger.close