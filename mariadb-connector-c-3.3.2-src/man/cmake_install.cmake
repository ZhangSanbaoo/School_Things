# Install script for directory: /home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xManPagesDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man3" TYPE FILE FILES
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_cancel.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_connection.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_check.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_column_cmp_named.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_column_count.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_create_many_named.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_create_many_num.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_exists_named.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_exists_num.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_free.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_list_named.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_list_num.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_unpack.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_update_many_named.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_dyncol_update_many_num.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_get_infov.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_reconnect.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_rpl_close.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_rpl_fetch.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_rpl_get_optionsv.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_rpl_open.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_rpl_optionsv.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_stmt_execute_direct.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mariadb_stmt_fetch_fields.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_affected_rows.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_autocommit.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_change_user.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_close.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_commit.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_data_seek.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_errno.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_error.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_fetch_field.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_fetch_field_direct.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_fetch_fields.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_fetch_lengths.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_fetch_row.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_field_count.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_field_seek.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_field_tell.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_free_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_character_set_info.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_client_info.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_client_version.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_host_info.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_proto_info.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_server_info.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_server_version.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_socket.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_get_ssl_cipher.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_hex_string.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_info.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_init.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_kill.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_more_results.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_next_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_num_fields.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_num_rows.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_options.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_options4.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_optionsv.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_ping.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_query.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_read_query_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_real_connect.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_real_escape_string.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_real_query.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_refresh.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_reset_connection.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_rollback.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_row_seek.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_row_tell.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_select_db.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_send_query.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_server_end.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_server_init.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_session_track_get_first.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_session_track_get_next.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_set_character_set.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_set_server_option.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_shutdown.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_sqlstate.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_ssl_set.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stat.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_affected_rows.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_attr_get.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_attr_set.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_bind_param.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_bind_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_close.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_data_seek.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_errno.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_error.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_execute.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_fetch.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_fetch_column.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_field_count.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_free_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_init.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_insert_id.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_more_results.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_next_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_num_rows.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_param_count.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_param_metadata.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_prepare.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_reset.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_result_metadata.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_row_seek.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_row_tell.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_send_long_data.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_sqlstate.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_store_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_stmt_warning_count.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_store_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_thread_end.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_thread_id.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_thread_init.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_use_result.3"
    "/home/zhangsanbao/Project/School_Things/mariadb-connector-c-3.3.2-src/man/mysql_warning_count.3"
    )
endif()

