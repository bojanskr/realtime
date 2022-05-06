defmodule Extensions.Postgres.DbSettings do
  def default() do
    %{
      "poll_interval_ms" => 100,
      "poll_max_changes" => 100,
      "poll_max_record_bytes" => 1_048_576,
      "publication" => "supabase_multiplayer",
      "slot_name" => "supabase_multiplayer_replication_slot"
    }
  end

  def required() do
    [
      {"region", &is_binary/1, false},
      {"db_host", &is_binary/1, true},
      {"db_name", &is_binary/1, true},
      {"db_user", &is_binary/1, true},
      {"db_port", &is_binary/1, true},
      {"db_password", &is_binary/1, true}
    ]
  end
end
