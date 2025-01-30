cmake_minimum_required(VERSION 3.13 FATAL_ERROR)

if(NOT TARGET score_lib_base)
  include("${SCORE_SOURCE_DIR}/cmake/ScoreExternalAddon.cmake")
endif()

if(NOT TARGET score_plugin_avnd)
  return()
endif()

project(score_addon_testaudio LANGUAGES CXX)

score_common_setup()

avnd_score_plugin_init(
  BASE_TARGET score_addon_testaudio
)

avnd_score_plugin_add(
  BASE_TARGET score_addon_testaudio
  SOURCES
    TestAudio/TestAudio.hpp
    TestAudio/TestAudioModel.hpp
    TestAudio/TestAudioModel.cpp
    TestAudio/TestAudioUi.hpp
  TARGET testaudio
  MAIN_CLASS TestAudio
  NAMESPACE Example
)

avnd_score_plugin_finalize(
  BASE_TARGET score_addon_testaudio
  PLUGIN_VERSION 1
  PLUGIN_UUID ""
)
