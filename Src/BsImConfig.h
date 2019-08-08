#pragma once
#include "BsPrerequisites.h"
// This file contains some configuration changes required to make the 
// Imgui plugin mesh well with the rest of bs::f and user code.
// Some configuration is required for ex. on Windows.

// Export the symbols to make sure that the public Imgui/imGuismo
// would be visible, since they're not visible to the MSVC linker.

// Platform export.
#if BS_PLATFORM == BS_PLATFORM_WIN32 // Windows
#  if BS_COMPILER == BS_COMPILER_MSVC
#    if defined(BS_STATIC_LIB)
#      define BS_IMGUI_EXPORT
#    else
#      if defined(BS_IMGUI_EXPORTS)
#        define BS_IMGUI_EXPORT __declspec(dllexport)
#      else
#        define BS_IMGUI_EXPORT __declspec(dllimport)
#      endif
#	 endif
#  else
#    if defined(BS_STATIC_LIB)
#      define BS_IMGUI_EXPORT
#    else
#      if defined(BS_IMGUI_EXPORTS)
#        define BS_IMGUI_EXPORT __attribute__ ((dllexport))
#      else
#        define BS_IMGUI_EXPORT __attribute__ ((dllimport))
#      endif
#	 endif
#  endif
#  define BS_IMGUI_HIDDEN
#else // Linux/Mac settings
#  define BS_IMGUI_EXPORT __attribute__ ((visibility ("default")))
#  define BS_IMGUI_HIDDEN __attribute__ ((visibility ("hidden")))
#endif

// Use bs::f's macros for assertion (which just wraps assert()).
#define IM_ASSERT(_EXPR) BS_ASSERT(_EXPR)