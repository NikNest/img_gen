add_executable(detector_wrapper src/detector_wrapper/detector_wrapper.cpp)

target_link_libraries(detector_wrapper
    ${catkin_LIBRARIES}
    ${OpenCV_LIBRARIES}
)