set(BS_IMGUI_SRC_PLUGIN
	"Src/BsImguiDemo.cpp"
	"Src/BsImguiInputs.cpp"
	"Src/BsImguiPlugin.cpp"
	"Src/BsImguiRenderer.cpp"
	"Src/BsImGuizmo.cpp"
)

set(BS_IMGUI_INC_PLUGIN
	"Src/BsImgui.h"
	"Src/BsImguiPrerequisities.h"
	"Src/BsImGuizmo.h"
	"Src/BsImConfig.h"
)

set(BS_IMGUI_INC_THIRDPARTY
	"ThirdParty/imgui/imgui.h"
	"ThirdParty/imgui/imgui_internal.h"
	"ThirdParty/ImGuizmo/ImGuizmo.h"
	"ThirdParty/ImGuizmo/ImGradient.h"
	"ThirdParty/ImGuizmo/ImCurveEdit.h"
	"ThirdParty/ImGuizmo/ImSequencer.h"
)

set(BS_IMGUI_SRC_THIRDPARTY
	"ThirdParty/imgui/imgui.cpp"
	"ThirdParty/imgui/imgui_demo.cpp"
	"ThirdParty/imgui/imgui_draw.cpp"
	"ThirdParty/imgui/imgui_widgets.cpp"
	"ThirdParty/ImGuizmo/ImGuizmo.cpp"
	"ThirdParty/ImGuizmo/ImGradient.cpp"
	"ThirdParty/ImGuizmo/ImCurveEdit.cpp"
	"ThirdParty/ImGuizmo/ImSequencer.cpp"
)

source_group("" FILES ${BS_IMGUI_SRC_PLUGIN} ${BS_IMGUI_INC_PLUGIN})
source_group("ThirdParty" ${BS_IMGUI_INC_THIRDPARTY} ${BS_IMGUI_SRC_THIRDPARTY})

set(BS_IMGUI_SRC
	${BS_IMGUI_SRC_PLUGIN}
	${BS_IMGUI_INC_PLUGIN}
	${BS_IMGUI_INC_THIRDPARTY}
	${BS_IMGUI_SRC_THIRDPARTY}
)