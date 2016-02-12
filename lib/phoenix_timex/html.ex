if Code.ensure_loaded?(Phoenix.HTML) do
  use Timex

  defimpl Phoenix.HTML.Safe, for: [DateTime] do
    def to_iodata(t) do
      case t do
        %{hour: 0, minute: 0, second: 0, ms: 0} ->
          DateFormat.format!(t, "%F", :strftime)
        _ ->
          DateFormat.format!(t, "%F %T", :strftime)
      end
    end
  end
end
