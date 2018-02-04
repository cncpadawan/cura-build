
ExternalProject_Add(Cura-PostProcessing
    GIT_REPOSITORY https://github.com/nallath/PostProcessingPlugin
    GIT_TAG origin/3.1
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
)

SetProjectDependencies(TARGET Cura-PostProcessing DEPENDS Cura)
