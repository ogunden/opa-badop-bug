package prog

db /foo : int

hello() = (
  do /foo <- 2
  <>foo</>
)

server = Server.one_page_server("foo", hello)
