import gleam/erlang/process
import gleam/io

pub fn main() {
  let fun = fn() {
    io.println("Hello from another process running concurrently!")
  }
  process.start(fun, True)
}
