project(QtYoga VERSION 0.1 LANGUAGES CXX)

qt6_add_library(QtYoga STATIC)
qt6_add_qml_module(QtYoga
    URI QtYoga
    VERSION 1.0
    QML_FILES
        Flex.qml
    SOURCES
        Utils.h            
        Utils.cpp
        YGMacros.h       
        YGStyle.h
        YGStyle.cpp
        CompactValue.h
        YGConfig.h     
        YGConfig.cpp       
        YGMarker.h
        YGMarker.cpp
        YGValue.h     
        YGValue.cpp  
        YGLayout.h
        YGLayout.cpp            
        instrumentation.h  
        YGEnums.h
        YGEnums.cpp        
        YGNode.h
        YGNode.cpp       
        Yoga.h
        Yoga.cpp
        log.h
        log.cpp                                             
        YGFloatOptional.h 
        YGNodePrint.h
        YGNodePrint.cpp  
        Yoga-internal.h                
        event/event.h
        event/event.cpp
        objects/flexbackend.h
        objects/flexbackend.cpp
        objects/flex/flexconfig.h
        objects/flex/flexconfig.cpp
        objects/flex/flexnode.h
        objects/flex/flexnode.cpp
)
