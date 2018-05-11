option(CURA_ENABLE_DEBUGMODE "Enable crash handler and other debug options in Cura" OFF)

ExternalProject_Add(Cura
    GIT_REPOSITORY https://github.com/peopoly3d/Cura
    GIT_TAG origin/Moai3.3
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH} -DURANIUM_SCRIPTS_DIR= -DCURA_VERSION=${CURA_VERSION} -DCURA_DEBUGMODE=${CURA_ENABLE_DEBUGMODE}
)

SetProjectDependencies(TARGET Cura DEPENDS Uranium CuraEngine)
