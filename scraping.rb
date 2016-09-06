#! /usr/bin/env ruby

require 'sqlite3'
require_relative 'pages'

db = SQLite3::Database.new 'offers.db'

Pages.new(
  'multitrabajos', MultitrabajosPage,
  'http://www.multitrabajos.com/empleos-area-tecnologia-sistemas-y-'\
  'telecomunicaciones.html'
).save_offers db

Pages.new(
  'computrabajo', ComputrabajoPage,
  'http://www.computrabajo.com.ec/empleos-de-informatica-y-telecom'
).save_offers db

UnmejorempleoPages.new(
  'unmejorempleo', UnmejorempleoPage,
  'http://www.unmejorempleo.com.ec/busqueda_resultados.php'
).save_offers db
