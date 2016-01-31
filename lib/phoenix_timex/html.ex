if Code.ensure_loaded?(Phoenix.HTML) do
  defimpl Phoenix.HTML.Safe, for: [Timex.DateTime, Timex.Ecto.DateTime] do
    def to_iodata(t) do
      Timex.DateFormat.format(t, "%F %T", :strftime)
    end
  end
  defimpl Phoenix.HTML.Safe, for: [Timex.Date, Timex.Ecto.Date] do
    def to_iodata(t) do
      Timex.DateFormat.format(t, "%F", :strftime)
    end
  end
  defimpl Phoenix.HTML.Safe, for: [Timex.Time, Timex.Ecto.Time] do
    def to_iodata(t) do
      Timex.DateFormat.format(t, "%T", :strftime)
    end
  end
end
