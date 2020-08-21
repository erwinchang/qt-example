cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project(GettingStartedWithCmake LANGUAGES CXX)

# find Qt5 and required components
find_package(Qt5 COMPONENTS REQUIRED Core Gui Widgets)

# need this to include the auto generated ui_mainwindow.h
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(project_sources mainwindow.cpp main.cpp)
set(project_headers mainwindow.h)
set(project_ui mainwindow.ui)

# wrap the ui file to a c++ header
qt5_wrap_ui(ui_wrap ${project_ui})
qt5_wrap_cpp(moc_sources ${project_headers})

# add the executable
add_executable(GettingStartedWithCmake 
    ${project_sources} 
    ${project_headers}
    ${project_ui}
    ${ui_wrap}
    ${moc_sources})

target_link_libraries(GettingStartedWithCmake 
    PUBLIC
    Qt5::Core
    Qt5::Gui
    Qt5::Widgets)
