project "Luacpp"
	kind "StaticLib"
	language "C++"
        cppdialect "C++20"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files 
	{
		"Source/Lua.hpp",
		"Source/LuaCpp.hpp",
		"Source/LuaVersion.cpp", "Source/LuaVersion.hpp",
		"Source/Engine/LuaState.cpp", "Source/Engine/LuaState.hpp",
		"Source/Engine/LuaType.cpp", "Source/Engine/LuaType.hpp",
		"Source/Engine/LuaTNil.cpp", "Source/Engine/LuaTNil.hpp",
		"Source/Engine/LuaTString.cpp", "Source/Engine/LuaTString.hpp",
		"Source/Engine/LuaTNumber.cpp", "Source/Engine/LuaTNumber.hpp",
		"Source/Engine/LuaTBoolean.cpp", "Source/Engine/LuaTBoolean.hpp",
		"Source/Engine/LuaTTable.cpp", "Source/Engine/LuaTTable.hpp",
		"Source/Engine/LuaTUserData.cpp", "Source/Engine/LuaTUserData.hpp",
		"Source/Registry/LuaRegistry.cpp", "Source/Registry/LuaRegistry.hpp",
		"Source/Registry/LuaCodeSnippet.cpp", "Source/Registry/LuaCodeSnippet.hpp",
		"Source/Registry/LuaCompiler.cpp", "Source/Registry/LuaCompiler.hpp",
		"Source/Registry/LuaCFunction.cpp", "Source/Registry/LuaCFunction.hpp",
		"Source/Registry/LuaLibrary.cpp", "Source/Registry/LuaLibrary.hpp",
		"Source/LuaContext.cpp", "Source/LuaContext.hpp",
		"Source/LuaMetaObject.cpp", "Source/LuaMetaObject.hpp",
	}

	includedirs 
	{
		"Source",
		"%{IncludeDir.lua}",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"