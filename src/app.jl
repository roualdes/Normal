using Pluto

Pluto.run(notebook = "normal.jl", port = parse(Int, ARGS[1]),
          show_file_system = false, launch_browser = false)
