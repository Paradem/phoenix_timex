if Code.ensure_loaded?(Phoenix.HTML) do
  use Timex

  defimpl Phoenix.HTML.Safe, for: [DateTime] do
    def to_iodata(datetime) do
      Timex.format!(datetime, "%F %T", :strftime)
    end
  end

  defimpl Phoenix.HTML.Safe, for: [Date] do
    def to_iodata(date) do
      Timex.format!(date, "%F", :strftime)
    end
  end
end
