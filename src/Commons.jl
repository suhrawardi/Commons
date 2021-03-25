module Commons

using Genie, Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Commons))

  Genie.genie(; context = @__MODULE__)

  Base.eval(Main, :(const Genie = Commons.Genie))
  Base.eval(Main, :(using Genie))
end

end
