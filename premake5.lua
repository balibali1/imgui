project "ImGui"
    kind "StaticLib"
    language "C++"
 
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    targetdir ("bin-int/" .. outputdir .. "/%{prj.name}")
 
    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textdit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp"                --For the newly "table" functions which introduced form ImGui v1.73
    }
 
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
 
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
