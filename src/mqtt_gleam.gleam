import gleam/io
import gleam/result

pub fn main() {
  case connect_mqtt() {
    Ok(msg) -> io.println(msg)
    Error(err) -> io.println(err)
  }
}

pub fn connect_mqtt() -> Result(String, String) {
  case :emqtt_client.start_link("mqtt://localhost:1883") {
    {ok, _pid} -> Ok("Connected to MQTT broker!"),
    {error, reason} -> Error("Failed to connect: " ++ to_string(reason))
 
  }
}