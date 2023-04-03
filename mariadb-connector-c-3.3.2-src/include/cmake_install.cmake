# Install script for directory: /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb" TYPE FILE FILES
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb_com.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mysql.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb_stmt.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/ma_pvio.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/ma_tls.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb_version.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/ma_list.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/errmsg.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb_dyncol.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb_ctype.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb_rpl.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mysqld_error.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mysql" TYPE FILE FILES
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mysql/client_plugin.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mysql/plugin_auth_common.h"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mysql/plugin_auth.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mariadb" TYPE FILE FILES "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/include/mariadb/ma_io.h")
endif()

