defmodule Comprador.Message.V1 do
  alias Comprador.Message

  def decode!(msg) do
    %Message{
      ref: msg["ref"],
      topic: msg["topic"],
      event: msg["event"],
      payload: msg["payload"]
    }
  end

  def encode!(%Message{} = msg) do
    msg
    |> Map.take([:topic, :event, :payload, :ref])
  end
end
