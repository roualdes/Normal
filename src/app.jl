using Pluto
using UUIDs

# TODO create a copy with a uuid of src/normal.jl and load it
newfile = "src/" * string(UUIDs.uuid4()) * ".jl"
tmppath, tmpio = mktemp()
open("src/normal.jl") do io
    for line in eachline(io, keep = true)
        write(tmpio, line)
    end
end
close(tmpio)
mv(tmppath, newfile, force = true)

Pluto.run(notebook = newfile,
          require_secret_for_access = false, require_secret_for_open_links = false,
          port = parse(Int, ARGS[1]), host = "0.0.0.0",
          show_file_system = false, launch_browser = false)
