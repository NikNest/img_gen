add_executable(image_loader src/image_loader/image_loader.cpp)

target_link_libraries(image_loader 
    ${catkin_LIBRARIES}
    ${OpenCV_LIBRARIES}
)