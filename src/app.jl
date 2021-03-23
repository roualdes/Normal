using Pluto

Pluto.run(notebook = "src/normal.jl",
          port = parse(Int, ARGS[1]), host = "0.0.0.0",
          show_file_system = false, launch_browser = false)
