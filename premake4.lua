
local action = _ACTION or ""

solution "nanovg"
	location ( "build" )
	configurations { "Debug", "Release" }
	platforms {"native", "x64", "x32"}
	
   	project "nanovg"
		language "C"
		kind "SharedLib"
		includedirs { "src" }
		files { "src/*.c" }
		targetdir("build")
		defines { "_CRT_SECURE_NO_WARNINGS" } --,"FONS_USE_FREETYPE" } Uncomment to compile with FreeType support
		
		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_gl2"

		kind "ConsoleApp"
		language "C"
		files { "example/example_gl2.c", "example/demo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }
			 defines { "NANOVG_GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_gl3"
		kind "ConsoleApp"
		language "C"
		files { "example/example_gl3.c", "example/demo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }
			 defines { "NANOVG_GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_gl2_msaa"
		kind "ConsoleApp"
		language "C"
		defines { "DEMO_MSAA" }
		files { "example/example_gl2.c", "example/demo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }
			 defines { "NANOVG_GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_gl3_msaa"
		kind "ConsoleApp"
		language "C"
		defines { "DEMO_MSAA" }
		files { "example/example_gl3.c", "example/demo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }
			 defines { "NANOVG_GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_fbo"
		kind "ConsoleApp"
		language "C"
		files { "example/example_fbo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_gles2"
		kind "ConsoleApp"
		language "C"
		files { "example/example_gles2.c", "example/demo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

	project "example_gles3"
		kind "ConsoleApp"
		language "C"
		files { "example/example_gles3.c", "example/demo.c", "example/perf.c" }
		includedirs { "src", "example" }
		targetdir("build")
		links { "nanovg" }

		configuration { "linux" }
			 linkoptions { "`pkg-config --libs glfw3`" }
			 links { "GL", "GLU", "m", "GLEW" }

		configuration { "windows" }
			 links { "glfw3", "gdi32", "winmm", "user32", "GLEW", "glu32","opengl32", "kernel32" }
			 defines { "NANOVG_GLEW", "_CRT_SECURE_NO_WARNINGS" }

		configuration { "macosx" }
			links { "glfw3" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit", "-framework CoreVideo" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings"}

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings"}

newoption {
    trigger = "prefix",
    description = "Install prefix",
    value = "PREFIX"
}

newaction {
    trigger = "install",
    description = "Install libnanovg",
    execute = function ()
        prefix = _OPTIONS["prefix"]

        libdir = prefix .. "/lib"
        includedir = prefix .. "/include"

        file = io.open("/usr/share/pkgconfig/libnanovg.pc", "w")
        io.output(file)
        io.write([[libdir=]] .. libdir .. [[ 
includedir=]] .. includedir .. [[ 

Name: libnanovg
Description: Libnanovg - vector drawing library
Version: 1.0
Libs: -L]] .. libdir .. [[ -lnanovg
Cflags: -I]] .. includedir
)
        io.close(file)

        os.copyfile("build/libnanovg.so", libdir .. "/libnanovg.so")
        os.copyfile("src/nanovg.h", includedir .. "/nanovg.h")
        os.copyfile("src/nanovg_gl.h", includedir .. "/nanovg_gl.h")
    end
}
