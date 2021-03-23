using Pluto

# TODO create a copy with a uuid of src/normal.jl and load it

Pluto.run(notebook = "src/normal.jl", require_secret_for_access = false,
          port = parse(Int, ARGS[1]), host = "0.0.0.0",
          show_file_system = false, launch_browser = false)

# TODO figure out how to delete all but src/normal.jl and src/app.jl when webpage closed
