class ApplicationController < ActionController::Base

  def index
    require 'neo4j/core/cypher_session/adaptors/bolt'
    bolt_adaptor = Neo4j::Core::CypherSession::Adaptors::Bolt.new('bolt://neo4j:pass@localhost:7687', options)


  end
end
