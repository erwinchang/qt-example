
cmake_minimum_required(VERSION 2.8.12)

project(ex1)

set(CMAKE_AUTOMOC TRUE)

find_package(Qt5 5.3 COMPONENTS Core Gui Widgets REQUIRED)

message(STATUS "Qt version: ${Qt5_VERSION}")

add_executable(ex1
    main.cpp
)

set(QT_LIBRARIES Qt5::Gui Qt5::Widgets)

target_link_libraries(ex1 ${QT_LIBRARIES})
