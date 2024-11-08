cmake_minimum_required(VERSION 3.20)
project(Luacpp)

add_library(Luacpp STATIC
    "Source/Lua.hpp"
    "Source/LuaCpp.hpp"
    "Source/LuaVersion.cpp" "Source/LuaVersion.hpp"
    "Source/Engine/LuaState.cpp" "Source/Engine/LuaState.hpp"
    "Source/Engine/LuaType.cpp" "Source/Engine/LuaType.hpp"
    "Source/Engine/LuaTNil.cpp" "Source/Engine/LuaTNil.hpp"
    "Source/Engine/LuaTString.cpp" "Source/Engine/LuaTString.hpp"
    "Source/Engine/LuaTNumber.cpp" "Source/Engine/LuaTNumber.hpp"
    "Source/Engine/LuaTBoolean.cpp" "Source/Engine/LuaTBoolean.hpp"
    "Source/Engine/LuaTTable.cpp" "Source/Engine/LuaTTable.hpp"
    "Source/Engine/LuaTUserData.cpp" "Source/Engine/LuaTUserData.hpp"
    "Source/Registry/LuaRegistry.cpp" "Source/Registry/LuaRegistry.hpp"
    "Source/Registry/LuaCodeSnippet.cpp" "Source/Registry/LuaCodeSnippet.hpp"
    "Source/Registry/LuaCompiler.cpp" "Source/Registry/LuaCompiler.hpp"
    "Source/Registry/LuaCFunction.cpp" "Source/Registry/LuaCFunction.hpp"
    "Source/Registry/LuaLibrary.cpp" "Source/Registry/LuaLibrary.hpp"
    "Source/LuaContext.cpp" "Source/LuaContext.hpp"
    "Source/LuaMetaObject.cpp" "Source/LuaMetaObject.hpp"
)

target_include_directories(Luacpp PUBLIC
    "Source"
    "../lua-5.4.6/src"
)
