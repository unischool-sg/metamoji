.class public Lcom/metamoji/nt/NtNoteController;
.super Lcom/metamoji/df/controller/DfNoteController;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/nt/INtAppFrame;
.implements Lcom/metamoji/ui/dialog/UiDialog$Callback;
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;
.implements Lcom/metamoji/nt/INtController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;,
        Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;,
        Lcom/metamoji/nt/NtNoteController$SchoolPersonalModeTypeValue;,
        Lcom/metamoji/nt/NtNoteController$TargetLayerType;,
        Lcom/metamoji/nt/NtNoteController$NoteMode;,
        Lcom/metamoji/nt/NtNoteController$UserDrawingStartHandler;,
        Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;,
        Lcom/metamoji/nt/NtNoteController$ContextDef;,
        Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;,
        Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;,
        Lcom/metamoji/nt/NtNoteController$SearchTextContext;,
        Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDPAGE_UNDO_VERSION_CURRENT:I = 0x1

.field public static final CMD_CONTEXT_PAGES:Ljava/lang/String; = "pages"

.field public static final CMD_CONTEXT_PAGE_INDEX:Ljava/lang/String; = "page"

.field public static final CMD_CONTEXT_PAGE_SCROLL_TO:Ljava/lang/String; = "scrollTo"

.field private static final EVNAME_EDITMODE:Ljava/lang/String; = "editMode"

.field private static final EVNAME_JUMP_BACK_LINK:Ljava/lang/String; = "jumpBackLink"

.field private static final EVNAME_NOTE_MODE_FOR_SCHOOL:Ljava/lang/String; = "noteModeForSchool"

.field private static final EVNAME_TOOLMODE:Ljava/lang/String; = "toolMode"

.field public static final FORSCHOOL_HIDDEN_STUDENT_NAME_MASK:Ljava/lang/String; = "***"

.field public static final MMJNT_EXTINFO_LINKJUMP_MOVE_FROM_INDEX:Ljava/lang/String; = "fromLinkJumpIndex"

.field public static final MMJNT_EXTINFO_LINKJUMP_MOVE_TO_INDEX:Ljava/lang/String; = "toLinkJumpIndex"

.field public static final MMJNT_EXTINFO_MOVE_PAGE_FROM_INDEX:Ljava/lang/String; = "fromPageIndex"

.field public static final MMJNT_EXTINFO_MOVE_PAGE_TO_INDEX:Ljava/lang/String; = "toPageIndex"

.field public static final MMJNT_EXTINFO_PAGE_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final MMJNT_EXTINFO_PAGE_COPY_PAGE_INDICES:Ljava/lang/String; = "pages"

.field public static final MMJNT_EXTINFO_PAGE_CUT_PAGE_INDICES:Ljava/lang/String; = "pages"

.field public static final MMJNT_EXTINFO_PAGE_DELETE_PAGE_INDICES:Ljava/lang/String; = "pages"

.field public static final MMJNT_EXTINFO_PAGE_JUMP_COMMAND_EXECUTE_CANCEL:Ljava/lang/String; = "cancel"

.field public static final MMJNT_EXTINFO_PAGE_JUMP_COMPLETION_BLOCK:Ljava/lang/String; = "completionBlock"

.field public static final MMJNT_EXTINFO_PAGE_JUMP_PAGE_INDEX:Ljava/lang/String; = "pageIndex"

.field public static final MMJNT_EXTINFO_PAGE_JUMP_VIEWPORT_OFFSET:Ljava/lang/String; = "offset"

.field public static final MMJNT_EXTINFO_PAGE_JUMP_VIEWPORT_RECT:Ljava/lang/String; = "rect"

.field public static final MMJNT_EXTINFO_PAGE_JUMP_ZOOM:Ljava/lang/String; = "zoom"

.field public static final MMJNT_EXTINFO_PAGE_LEFT:Ljava/lang/String; = "left"

.field public static final MMJNT_EXTINFO_PAGE_LEFT_TOP:Ljava/lang/String; = "leftTop"

.field public static final MMJNT_EXTINFO_PAGE_NOCHANGE:Ljava/lang/String; = "nochange"

.field public static final MMJNT_EXTINFO_PAGE_PASTE_INDEX:Ljava/lang/String; = "pageIndex"

.field public static final MMJNT_EXTINFO_PAGE_RIGHT:Ljava/lang/String; = "right"

.field public static final MMJNT_EXTINFO_PAGE_SCROLL_TO:Ljava/lang/String; = "scrollTo"

.field public static final MMJNT_EXTINFO_PAGE_TOP:Ljava/lang/String; = "top"

.field private static final MMJNT_MODELPROPVALUE_APPLYTEMPLATEUNDO_VERSION_LATEST:I = 0x1

.field public static final MMJNT_MODELPROPVALUE_LINKJUMPS_VERSION_1:I = 0x1

.field public static final MMJNT_MODELPROPVALUE_LINKJUMPS_VERSION_LATEST:I = 0x2

.field private static final MMJNT_MODELPROPVALUE_MOVEPAGEUNDO_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROPVALUE_REMOVEPAGESUNDO_VERSION_LATEST:I = 0x1

.field public static final MMJNT_MODELPROPVALUE_SCHOOLPAGETYPEUNDO_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_ADDPAGESUNDO_ADDED_PAGES:Ljava/lang/String; = "a"

.field private static final MMJNT_MODELPROP_ADDPAGESUNDO_INSERT_INDEX:Ljava/lang/String; = "i"

.field private static final MMJNT_MODELPROP_ADDPAGESUNDO_PREV_CURRENT_PAGE:Ljava/lang/String; = "p"

.field private static final MMJNT_MODELPROP_APPLYTEMPLATEUNDO_NEW_FRONT_COVER:Ljava/lang/String; = "nfc"

.field private static final MMJNT_MODELPROP_APPLYTEMPLATEUNDO_OLD_FRONT_COVER:Ljava/lang/String; = "ofc"

.field private static final MMJNT_MODELPROP_APPLYTEMPLATEUNDO_PD:Ljava/lang/String; = "pd"

.field public static final MMJNT_MODELPROP_FORSCHOOL_ALLOW_EVERYONE_ANSWER:Ljava/lang/String; = "forSchoolAllowEveryoneAnswer"

.field public static final MMJNT_MODELPROP_FORSCHOOL_HIDDEN_STUDENT_NAME:Ljava/lang/String; = "forSchoolHiddenStudentName"

.field public static final MMJNT_MODELPROP_FORSCHOOL_PERSONAL_MODE_TYPE:Ljava/lang/String; = "forSchoolPersonalModeType"

.field public static final MMJNT_MODELPROP_IS_OFFLINE_EDIT_MODE:Ljava/lang/String; = "isOfflineEditMode"

.field private static final MMJNT_MODELPROP_MOVEPAGEUNDO_FROM:Ljava/lang/String; = "f"

.field private static final MMJNT_MODELPROP_MOVEPAGEUNDO_TO:Ljava/lang/String; = "t"

.field public static final MMJNT_MODELPROP_NOTE_CHATDATA:Ljava/lang/String; = "chatdata"

.field public static final MMJNT_MODELPROP_NOTE_FORSCHOOL_GROUPLIST:Ljava/lang/String; = "forSchoolGroupList"

.field public static final MMJNT_MODELPROP_NOTE_LINKJUMPS:Ljava/lang/String; = "linkjumps"

.field private static final MMJNT_MODELPROP_PAGEUNDO_FOR_UNDO:Ljava/lang/String; = "u"

.field private static final MMJNT_MODELPROP_PAGEUNDO_NEED_UPDATE_THUMBNAIL:Ljava/lang/String; = "t"

.field private static final MMJNT_MODELPROP_PAGEUNDO_PAGE:Ljava/lang/String; = "p"

.field private static final MMJNT_MODELPROP_REMOVEPAGESUNDO_NEXT_CURRENT_PAGE_MODEL:Ljava/lang/String; = "n"

.field private static final MMJNT_MODELPROP_REMOVEPAGESUNDO_PREV_CURRENT_PAGE_MODEL:Ljava/lang/String; = "p"

.field private static final MMJNT_MODELPROP_REMOVEPAGESUNDO_REMOVED_PAGES:Ljava/lang/String; = "r"

.field private static final MMJNT_MODELPROP_REMOVEPAGESUNDO_REMOVED_PAGE_INDICES:Ljava/lang/String; = "i"

.field public static final MMJNT_MODELPROP_SCHOOLPAGETYPEUNDO_FROM_PAGEINFOLIST:Ljava/lang/String; = "fpil"

.field public static final MMJNT_MODELPROP_SCHOOLPAGETYPEUNDO_TO_SCHOOLPAGETYPE:Ljava/lang/String; = "tspt"

.field private static final MMJNT_MODELTYPE_ADDPAGESUNDO:Ljava/lang/String; = "addpagesundo"

.field public static final MMJNT_MODELTYPE_APPLYTEMPLATEUNDO:Ljava/lang/String; = "applytemplateundo"

.field public static final MMJNT_MODELTYPE_LINKJUMPS:Ljava/lang/String; = "linkjumps"

.field private static final MMJNT_MODELTYPE_MOVEPAGEUNDO:Ljava/lang/String; = "movepageundo"

.field private static final MMJNT_MODELTYPE_PAGEUNDO:Ljava/lang/String; = "pageundo"

.field private static final MMJNT_MODELTYPE_REMOVEPAGESUNDO:Ljava/lang/String; = "removepagesundo"

.field public static final MMJNT_MODELTYPE_SCHOOLPAGETYPEUNDO:Ljava/lang/String; = "schoolpagetypeundo"

.field private static final MMJNT_PASTEBOARDTYPE_PAGE:Ljava/lang/String; = "http://www.metamoji.com/tiny.note/page"

.field public static final MODELTYPE:Ljava/lang/String; = "$freenote"

.field public static final MODELTYPE_COLLABO:Ljava/lang/String; = "$sharenote"

.field public static final MODELTYPE_NOTE:Ljava/lang/String; = "$freenote"

.field public static final NOTE_VERSION_LATEST:I = 0x1

.field private static final PAGE_UNDO_VERSION_CURRENT:I = 0x1

.field public static final PBPAGE_TYPEID:Ljava/lang/String; = "pbpage"

.field public static final PBPAGE_VERSION_CURRENT:I = 0x1


# instance fields
.field private final SCROLL_WHEN_PAGE_CHANGE_MARGIN:F

.field private _autoScroller:Lcom/metamoji/nt/NtAutoScroller;

.field private _currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field _delaySelectTextUnit:Z

.field private _doingUndoRedoCommand:Z

.field private _focusManager:Lcom/metamoji/nt/NtFocusManager;

.field private _ignoreMazecClosed:Z

.field private _ignoreTextUnitFocus:Z

.field private _initialized:Z

.field private _interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

.field private _isDetailWindowMode:Z

.field private _isReady:Z

.field private _jumpHis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _jumpHisCount:I

.field private _laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

.field private _linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

.field _longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

.field private _preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field private _prepareTextMode:Z

.field private _prevFocusUnit:Lcom/metamoji/nt/NtUnitController;

.field _recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field _requestWaType:Lcom/metamoji/df/controller/DfPageController$WaType;

.field private _rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

.field private _saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field _searchCurrentModel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field _searchCurrentPosition:Lcom/metamoji/nt/NtTextSearchPosition;

.field _tapListener:Lcom/metamoji/df/sprite/TapListener;

.field private _tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

.field _touchListener:Lcom/metamoji/df/sprite/TouchListener;

.field _undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

.field _viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

.field private mFlipUnitManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

.field private mSoundUnitManager:Lcom/metamoji/un/sound/UnSoundUnitManager;

.field private mSurveyUnitManager:Lcom/metamoji/un/survey/UnSurveyUnitManager;

.field mUserDrawingEndHandler:Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;

.field mUserDrawingStartHandler:Lcom/metamoji/nt/NtNoteController$UserDrawingStartHandler;

.field private mVideUnitManager:Lcom/metamoji/un/video/UnVideoUnitManager;

.field private m_askCollabolizeOnBeginningOfEdit:Z

.field private m_distributeNoteOnBeginningOfEdit:Z

.field private m_isEditLayerEditable:Z

.field private m_noaskCollabolizeOnBeginningOfEdit:Z

.field private m_noaskCollabolizeOnBeginningOfEditForBlankPaper:Z

.field private m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

.field private m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

.field private m_noaskCollabolizeOnBeginningOfEditForSubmitByStudent:Z

.field private m_showJoinClassNoteAlert:Z

.field private m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

.field private m_targetPersonalLayerInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public onOrientationChangeEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/df/controller/DfPageController;",
            ">;"
        }
    .end annotation
.end field

.field public onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/nt/NtPageController;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportScrollStartEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onViewportZoomStartEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field public onWorkareaChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/df/controller/DfPageController;",
            ">;"
        }
    .end annotation
.end field

.field private whileNoteModeChang:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_focusManager(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtFocusManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_ignoreTextUnitFocus(Lcom/metamoji/nt/NtNoteController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_laserLayer(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/ui/LaserPointerCanvas;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_preModeOfText(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_isEditLayerEditable(Lcom/metamoji/nt/NtNoteController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_targetLayerType(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtNoteController$TargetLayerType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_targetPersonalLayerInfo(Lcom/metamoji/nt/NtNoteController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_doingUndoRedoCommand(Lcom/metamoji/nt/NtNoteController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_doingUndoRedoCommand:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_ignoreTextUnitFocus(Lcom/metamoji/nt/NtNoteController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isReady(Lcom/metamoji/nt/NtNoteController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_isReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_preModeOfText(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeToolMode(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfirmBeforeDeletePage(Lcom/metamoji/nt/NtNoteController;Landroidx/fragment/app/FragmentActivity;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->confirmBeforeDeletePage(Landroidx/fragment/app/FragmentActivity;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcopyPagesCore(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->copyPagesCore(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendTextSelectMode(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->endTextSelectMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleForSchoolGroupListChangeDirection(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->handleForSchoolGroupListChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetNoteMode(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->handleSetNoteMode(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minternalSetEditLayerEditable(Lcom/metamoji/nt/NtNoteController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->internalSetEditLayerEditable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monChangeFocusUnit(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtFocusManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->onChangeFocusUnit(Lcom/metamoji/nt/NtFocusManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTextSelectModeTap(Lcom/metamoji/nt/NtNoteController;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->onTextSelectModeTap(Landroid/graphics/PointF;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monViewportScrollChanging(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChanging()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWillChangeFocusUnit(Lcom/metamoji/nt/NtNoteController;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->onWillChangeFocusUnit([Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAfterCurrentPageChanged(Lcom/metamoji/nt/NtNoteController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAfterCurrentPageChanged(Lcom/metamoji/nt/NtNoteController;ZZLcom/metamoji/cm/IAction1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZLcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremovePagesCore(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->removePagesCore(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollWhenPageChange(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfNoteController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 281
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_doingUndoRedoCommand:Z

    .line 557
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_initialized:Z

    .line 558
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreMazecClosed:Z

    .line 559
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    const/4 p2, 0x0

    .line 560
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_prevFocusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 561
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    .line 565
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    .line 568
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    .line 571
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    .line 573
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_isReady:Z

    .line 590
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    .line 591
    sget-object p3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 592
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_distributeNoteOnBeginningOfEdit:Z

    .line 593
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_askCollabolizeOnBeginningOfEdit:Z

    .line 594
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEdit:Z

    .line 596
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

    .line 597
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    .line 599
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForBlankPaper:Z

    .line 600
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForSubmitByStudent:Z

    .line 603
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_showJoinClassNoteAlert:Z

    .line 678
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->mVideUnitManager:Lcom/metamoji/un/video/UnVideoUnitManager;

    .line 681
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->mSoundUnitManager:Lcom/metamoji/un/sound/UnSoundUnitManager;

    .line 687
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->mFlipUnitManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    .line 690
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->mSurveyUnitManager:Lcom/metamoji/un/survey/UnSurveyUnitManager;

    .line 699
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 845
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 846
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 847
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 848
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 1886
    sget-object p3, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1888
    sget-object p3, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 4808
    sget-object p3, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->_requestWaType:Lcom/metamoji/df/controller/DfPageController$WaType;

    const/high16 p3, 0x41700000    # 15.0f

    .line 5045
    iput p3, p0, Lcom/metamoji/nt/NtNoteController;->SCROLL_WHEN_PAGE_CHANGE_MARGIN:F

    .line 6508
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->whileNoteModeChang:Z

    .line 7722
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollStartEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7741
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7755
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7773
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7792
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomStartEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7809
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7827
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7845
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7862
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7881
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onOrientationChangeEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7897
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 7913
    new-instance p3, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p3}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->onWorkareaChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 9455
    new-instance p3, Lcom/metamoji/nt/NtNoteController$UserDrawingStartHandler;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/nt/NtNoteController$UserDrawingStartHandler;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->mUserDrawingStartHandler:Lcom/metamoji/nt/NtNoteController$UserDrawingStartHandler;

    .line 9456
    new-instance p3, Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->mUserDrawingEndHandler:Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;

    .line 9674
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHis:Ljava/util/List;

    .line 9675
    iput p1, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    .line 11163
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentModel:Ljava/lang/ref/WeakReference;

    .line 11180
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentPosition:Lcom/metamoji/nt/NtTextSearchPosition;

    .line 11197
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_delaySelectTextUnit:Z

    .line 862
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    .line 874
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    .line 877
    new-instance p3, Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-direct {p3, p0}, Lcom/metamoji/nt/NtLinkJumpManager;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    .line 880
    iget-object p3, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast p3, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p3}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    .line 884
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    :goto_0
    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 885
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    .line 890
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_distributeNoteOnBeginningOfEdit:Z

    .line 893
    new-instance p1, Lcom/metamoji/nt/NtNoteController$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNoteController$1;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 909
    new-instance p1, Lcom/metamoji/nt/NtNoteController$2;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNoteController$2;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 958
    new-instance p1, Lcom/metamoji/nt/NtNoteController$3;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNoteController$3;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 1069
    new-instance p1, Lcom/metamoji/nt/NtAutoScroller;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtAutoScroller;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_autoScroller:Lcom/metamoji/nt/NtAutoScroller;

    return-void
.end method

.method private IsContainFrame(Lcom/metamoji/nt/NtJumpLocation;Landroid/graphics/PointF;)Z
    .locals 11

    .line 9649
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 9650
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v1

    .line 9651
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9652
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    const/4 v3, 0x1

    .line 9654
    new-array v7, v3, [F

    const/4 v10, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v7, v10

    .line 9655
    new-instance v8, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v8, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9656
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    move-object v5, p0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/nt/NtJumpLocation;->calc(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Integer;[FLandroid/graphics/PointF;Z)Landroid/graphics/RectF;

    .line 9657
    iget p1, v8, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, v8, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    aget p1, v7, v10

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    aget p1, v7, v10

    float-to-double v5, p1

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    cmpg-double p1, v0, v5

    if-gez p1, :cond_0

    return v10

    .line 9660
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    .line 9661
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 9662
    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtJumpLocation;->getTargetRect(Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 9664
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v10
.end method

.method private IsSameJump(Lcom/metamoji/nt/NtJumpLocation;)Z
    .locals 11

    .line 9628
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 9629
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v1

    .line 9630
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9631
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    const/4 v3, 0x1

    .line 9633
    new-array v7, v3, [F

    const/4 v10, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v7, v10

    .line 9634
    new-instance v8, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v8, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    move-object v5, p0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/nt/NtJumpLocation;->calc(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Integer;[FLandroid/graphics/PointF;Z)Landroid/graphics/RectF;

    .line 9636
    iget p1, v8, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, v8, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    aget p1, v7, v10

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    aget p1, v7, v10

    float-to-double v4, p1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    cmpg-double p1, v0, v4

    if-gez p1, :cond_0

    return v3

    :cond_0
    return v10
.end method

.method private _changeUnitbarAndToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method private _selectToolModeCommand(Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 5

    .line 8119
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 8120
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NAV_SELECTTOOL:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    .line 8124
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NAV_PENTOOL:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    .line 8128
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NAV_ERASERTOOL:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    return-void
.end method

.method static synthetic access$001(Lcom/metamoji/nt/NtNoteController;I)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->setCurrentPageIndex(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-object p0
.end method

.method static synthetic access$300(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-object p0
.end method

.method private adjustFocusUnitOnPageDisplayed()V
    .locals 3

    .line 3599
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->correctCurrentPageLayer()V

    .line 3601
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    if-nez v0, :cond_2

    .line 3602
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3605
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 3609
    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    if-eqz v1, :cond_2

    .line 3628
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 3633
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->broadcastToolModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 3635
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 3636
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->broadcastPenChangedWithIndex(I)V

    .line 3640
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtEraserSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtEraserSettings;

    .line 3641
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->broadcastEraserChangedWithIndex(I)V

    .line 3644
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->refreshDetailWindow()V

    .line 3647
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3649
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->currentPageChangedTo(Lcom/metamoji/nt/NtPageController;)V

    .line 3652
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->notifyViewingPositionChangedOnCollabo(Z)V

    .line 3655
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3656
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$17;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$17;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "I",
            "Lcom/metamoji/df/controller/EditContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7650
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "pu"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 7651
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPageController;

    .line 7652
    invoke-virtual {v1, p1, p3, v0}, Lcom/metamoji/nt/NtPageController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/df/model/IModel;)V

    .line 7653
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private broadcastSelectChanged(I)V
    .locals 1

    .line 2441
    :try_start_0
    new-instance v0, Lcom/metamoji/nt/NtSelectModeChangedContext;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/NtSelectModeChangedContext;-><init>(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2443
    const-string v0, "NtNoteController.broadcastSelectChanged"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastToolModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 1

    .line 2419
    :try_start_0
    new-instance v0, Lcom/metamoji/nt/NtToolModeChangedContext;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/nt/NtToolModeChangedContext;-><init>(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2421
    const-string p2, "broadcastToolModeChanged"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private changeEditMode(Lcom/metamoji/nt/NtDocument$EditMode;Z)V
    .locals 2

    .line 2006
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 2013
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    .line 2014
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p2

    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq p2, v0, :cond_7

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 2016
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p2

    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p2, v0, :cond_7

    .line 2019
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2023
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne p2, v0, :cond_7

    .line 2033
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isEditLayerEditable()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2043
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2046
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 2008
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p2

    if-eq p2, p1, :cond_7

    .line 2009
    :cond_6
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 2051
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setEditMode(Lcom/metamoji/nt/NtDocument$EditMode;)V

    .line 2055
    sget-object p2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq p1, p2, :cond_8

    sget-object p2, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, p2, :cond_9

    .line 2059
    :cond_8
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentModel(Lcom/metamoji/df/model/IModel;)V

    .line 2060
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentPosition(Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 2062
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object p2

    .line 2063
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->broadcastToolModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2064
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    .line 2065
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_TOOLS_AND_LIBRARY:Lcom/metamoji/nt/NtCommand;

    sget-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2069
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    return-void
.end method

.method private changeToEditMode(Z)V
    .locals 2

    const/4 v0, 0x2

    .line 2077
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setNumberOfTouchesPanGesture(I)V

    .line 2079
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->changeEditMode(Lcom/metamoji/nt/NtDocument$EditMode;Z)V

    .line 2083
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2085
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2086
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2089
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->disable()V

    return-void
.end method

.method private changeToLaserMode(Z)V
    .locals 2

    .line 2125
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x1

    .line 2128
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideDetailWindow(Z)V

    .line 2130
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideWristGuard()V

    .line 2134
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->changeEditMode(Lcom/metamoji/nt/NtDocument$EditMode;Z)V

    const/4 p1, 0x2

    .line 2135
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setNumberOfTouchesPanGesture(I)V

    .line 2140
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2142
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2143
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2147
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->enable()V

    return-void
.end method

.method private changeToViewMode(Z)V
    .locals 2

    .line 2097
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideDetailWindow(Z)V

    .line 2099
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideWristGuard()V

    .line 2103
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->changeEditMode(Lcom/metamoji/nt/NtDocument$EditMode;Z)V

    .line 2104
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtNoteController;->setNumberOfTouchesPanGesture(I)V

    .line 2108
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2110
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2111
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2114
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->disable()V

    .line 2117
    sget-object p1, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->_selectToolModeCommand(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    return-void
.end method

.method private changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 4

    .line 2184
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, p1, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 2190
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq p1, v0, :cond_1

    .line 2194
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideDetailWindow(Z)V

    .line 2197
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 2200
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2201
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 2203
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->endTextSelectMode()V

    .line 2204
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    .line 2205
    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 2210
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToEditMode(Z)V

    .line 2212
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 2215
    :cond_4
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtNoteController;->convMode(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    .line 2216
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v1, :cond_5

    .line 2218
    iput-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 2221
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2222
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->_selectToolModeCommand(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2223
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2232
    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->broadcastToolModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2235
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    .line 2238
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    return-void
.end method

.method private chgPenToolIfViewmode()V
    .locals 2

    .line 8064
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 8065
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->handlePenTool(Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method private confirmBeforeDeletePage(Landroidx/fragment/app/FragmentActivity;I)Z
    .locals 1

    .line 5995
    :try_start_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_SHARE_DELETE_PAGE_ALERT_MSG:I

    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5997
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method static convMode(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 2

    .line 2152
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 2153
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p0, v1, :cond_0

    .line 2154
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 2156
    :cond_0
    sget-object p0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    return-object v0

    .line 2170
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 2164
    :cond_2
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 2167
    :cond_3
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 2158
    :cond_4
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0

    .line 2161
    :cond_5
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object p0
.end method

.method private copyPagesCore(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6076
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6077
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    .line 6078
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6079
    invoke-virtual {p0, p1, v1, v0}, Lcom/metamoji/nt/NtNoteController;->makeCopyingData(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 6081
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$51;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtNoteController$51;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-static {v1, p1, v2, v0}, Lcom/metamoji/nt/NtPasteDataUtil;->exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6091
    const-string p1, "copyPageCore: exportModels returns null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 6105
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtNoteDataProvider;->putClipboard(Landroid/content/Context;I)V

    return-void
.end method

.method public static createNewNoteModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 820
    const-string v0, "$freenote"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 822
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 823
    const-string v0, "currentPage"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 828
    const-string v0, "forSchoolPersonalModeType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 833
    const-string v0, "forSchoolHiddenStudentName"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 834
    const-string v0, "forSchoolAllowEveryoneAnswer"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private createTextUnitWithTapPoint(Landroid/graphics/PointF;)V
    .locals 8

    .line 8336
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 8342
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 8343
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getPageListViewStatus()I

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_1

    invoke-interface {v1, v3}, Lcom/metamoji/nt/INtEditor;->setPageListViewStatus(I)V

    .line 8344
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getJumpListViewStatus()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v3}, Lcom/metamoji/nt/INtEditor;->setJumpListViewStatus(I)V

    .line 8348
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    .line 8349
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v3

    .line 8350
    invoke-virtual {v3, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 8351
    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 8352
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 8355
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 8357
    instance-of v5, v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v5, :cond_4

    .line 8358
    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v3, :cond_3

    .line 8360
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->isEditableTextUnit()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->isSelectableTextUnit()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v3

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 8367
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/nt/NtNoteController$60;

    invoke-direct {v2, p0, v4, p1, v1}, Lcom/metamoji/nt/NtNoteController$60;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;Lcom/metamoji/nt/INtEditor;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 8401
    :cond_5
    iget-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    const/4 v3, 0x1

    .line 8405
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 8407
    sget-object v4, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, v4}, Lcom/metamoji/nt/NtNoteController;->changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 8408
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->endTextSelectMode()V

    .line 8411
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 8412
    new-instance v5, Lcom/metamoji/cm/CmContext;

    invoke-direct {v5}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 8413
    const-string/jumbo v6, "tapPos"

    sget-object v7, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8414
    const-string v6, "location"

    invoke-virtual {v5, v6, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8415
    const-string/jumbo v2, "toFocus"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8416
    const-string/jumbo v2, "toSelect"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8418
    invoke-virtual {v0, v4, v5}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8420
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 8423
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 8424
    invoke-virtual {p1, v4}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_6

    .line 8426
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    .line 8429
    :cond_6
    invoke-interface {v1, v3}, Lcom/metamoji/nt/INtEditor;->setTextUnitInputStyleBarVisible(Z)V

    .line 8431
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 8432
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 8420
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 8421
    throw v0
.end method

.method private endTextSelectMode()V
    .locals 2

    .line 8447
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$61;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$61;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v0, 0x2

    .line 8457
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setNumberOfTouchesPanGesture(I)V

    return-void
.end method

.method private static findUnitById(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;
    .locals 5

    .line 8700
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 8701
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 8702
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/controller/DfController;

    if-eqz v2, :cond_1

    .line 8704
    instance-of v3, v2, Lcom/metamoji/nt/NtUnitController;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 8708
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/nt/NtNoteController;->findUnitById(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWindowController()Lcom/metamoji/nt/NtEditorWindowController;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChangeNoteSettingsVerticalWriting(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 5569
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object p1

    .line 5570
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitVerticalWriting()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setNoteSettingsVerticalWriting(Z)V

    .line 5573
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    return-void
.end method

.method private handleChangePagecount(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 8016
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtFocusManager;->changeFocus(Lcom/metamoji/nt/NtNoteController;)V

    return-void
.end method

.method private handleCloseMenu()V
    .locals 0

    return-void
.end method

.method private handleCopyPage(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 5904
    const-string v0, "pages"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 5906
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5907
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p1, :cond_2

    .line 5909
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5913
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$48;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$48;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleCutOrDeletePage(Lcom/metamoji/cm/CmContext;Z)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 6010
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 6013
    :cond_1
    const-string v0, "pages"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 6014
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6018
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$50;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtNoteController$50;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleCutPage(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 5934
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5937
    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->handleCutOrDeletePage(Lcom/metamoji/cm/CmContext;Z)V

    return-void
.end method

.method private handleDeletePage(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 5944
    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->handleCutOrDeletePage(Lcom/metamoji/cm/CmContext;Z)V

    return-void
.end method

.method private handleEndEditMode()V
    .locals 1

    .line 8023
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->isFocusUnitRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8024
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->requestKillFocus()Z

    :cond_0
    return-void
.end method

.method private handleEraserTool(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 8108
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    .line 8109
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_END_EDIT:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 8110
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->_changeUnitbarAndToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private handleForSchoolGroupListChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 10307
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 10308
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received ForSchoolGroupListChangeDirectionDirection bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10310
    new-instance p2, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;-><init>(Ljava/lang/Object;)V

    .line 10311
    const-string p1, "ForSchoolGroupListChangeDirection: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10313
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->groupList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10314
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->groupList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private handleInsertDocument(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 5545
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5550
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5551
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtNoteController$41;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$41;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 5561
    :cond_0
    const-string v0, "insDoc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    if-eqz p1, :cond_1

    .line 5563
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->insertToCurrentPage(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    :cond_1
    return-void
.end method

.method private handleLinkJumpBackward()V
    .locals 1

    .line 5031
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5033
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->performLinkJumpBackward()V

    :cond_0
    return-void
.end method

.method private handleLinkJumpForward()V
    .locals 1

    .line 5038
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5040
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->performLinkJumpForward()V

    :cond_0
    return-void
.end method

.method private handleMovePage(Lcom/metamoji/cm/CmContext;)V
    .locals 7

    .line 6361
    const-string v0, "fromPageIndex"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6362
    const-string/jumbo v1, "toPageIndex"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ge v0, p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    if-ltz p1, :cond_7

    if-gez v0, :cond_2

    goto :goto_1

    .line 6372
    :cond_2
    new-instance v1, Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 6376
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 6377
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    .line 6379
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    .line 6383
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6384
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;

    move-result-object v5

    if-lez p1, :cond_3

    add-int/lit8 v2, p1, -0x1

    .line 6387
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 6389
    :cond_3
    move-object v6, v3

    check-cast v6, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->movePage(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 6393
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->movePage(II)V

    .line 6395
    invoke-virtual {v3}, Lcom/metamoji/df/controller/DfPageController;->getPageIndex()I

    move-result p1

    if-eqz v4, :cond_5

    .line 6396
    invoke-virtual {v4}, Lcom/metamoji/df/controller/DfPageController;->getPageIndex()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    .line 6398
    :goto_0
    const-string v3, "movepageundo"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 6399
    const-string v5, "f"

    invoke-interface {v3, v5, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 6400
    const-string/jumbo p1, "t"

    invoke-interface {v3, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 6403
    invoke-virtual {v1, v3, v4}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    if-eqz v2, :cond_6

    .line 6413
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->sendMovePagesDirection(Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6416
    :cond_6
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 6417
    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method private handleNewPage(Lcom/metamoji/cm/CmContext;)V
    .locals 9

    .line 5180
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->closeDetailWindowAndEnsurePenMode()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5185
    const-string v2, "page"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5186
    const-string/jumbo v2, "scrollTo"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_0
    move-object v4, v1

    if-gez v0, :cond_1

    .line 5189
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    :cond_1
    move v3, v0

    .line 5192
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5194
    const-string p1, "NtNoteController::handleNewPge invalid page index."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 5198
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 5199
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtDocumentTemplate;->newPageFromModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 5206
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    .line 5209
    invoke-static {p1, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 5212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5213
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    .line 5214
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/nt/NtNoteController;->addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V

    if-nez v4, :cond_3

    .line 5218
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private handlePageBackward(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4927
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4928
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    if-eqz p1, :cond_0

    .line 4932
    const-string/jumbo v0, "scrollTo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4934
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void

    .line 4940
    :cond_0
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void
.end method

.method private handlePageChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7999
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtFocusManager;->changeFocus(Lcom/metamoji/nt/NtNoteController;)V

    .line 8003
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v0, :cond_0

    .line 8004
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->setFocusToRootUnit()Z

    .line 8007
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->broadcastToolModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    return-void
.end method

.method private handlePageChanging(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7985
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7988
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    :cond_0
    return-void
.end method

.method private handlePageForward(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 5013
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 5014
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    if-eqz p1, :cond_0

    .line 5018
    const-string/jumbo v0, "scrollTo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5020
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void

    .line 5026
    :cond_0
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void
.end method

.method private handlePageJump(Lcom/metamoji/cm/CmContext;)V
    .locals 5

    const/4 v0, -0x1

    .line 5108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pageIndex"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_2

    .line 5113
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5116
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 5117
    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    new-instance v2, Lcom/metamoji/nt/NtNoteController$35;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/nt/NtNoteController$35;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/cm/CmContext;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V

    .line 5133
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 5137
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 5141
    const-string v1, "rect"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 5143
    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->fitToRect(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 5146
    :cond_2
    const-string/jumbo v1, "zoom"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 5148
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtPageController;->setZoom(FZ)V

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 5151
    :goto_0
    const-string v4, "offset"

    invoke-virtual {p1, v4}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5153
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {v0, p1, v3}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    .line 5159
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private handlePageJumpHead(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 4945
    new-instance v0, Lcom/metamoji/nt/NtNoteController$33;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$33;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    .line 4952
    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V

    if-eqz p1, :cond_0

    .line 4956
    const-string/jumbo v0, "scrollTo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4958
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void

    .line 4964
    :cond_0
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void
.end method

.method private handlePageJumpSpecified(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4987
    new-instance p1, Lcom/metamoji/ui/dialog/PageJumpSpecified;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/PageJumpSpecified;-><init>()V

    .line 4988
    new-instance v0, Lcom/metamoji/nt/NtNoteController$34;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController$34;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ui/dialog/PageJumpSpecified;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PageJumpSpecified;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5006
    const-string v0, "ScGroupEditDialog"

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PageJumpSpecified;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handlePageJumpTail(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4969
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4970
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    if-eqz p1, :cond_0

    .line 4974
    const-string/jumbo v0, "scrollTo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4976
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void

    .line 4982
    :cond_0
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    return-void
.end method

.method private handlePastePage(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 5240
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->closeDetailWindowAndEnsurePenMode()V

    .line 5242
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtNoteDataProvider;->getClipboard(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5247
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->insertPagesCore(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private handlePenEraserTool()V
    .locals 2

    .line 8053
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_1

    .line 8054
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    .line 8055
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 8056
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->handlePenTool(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private handlePenTool(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 8072
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    .line 8073
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_END_EDIT:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 8074
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->_changeUnitbarAndToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private handleSelectTool()V
    .locals 3

    .line 8040
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 8044
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_END_EDIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 8046
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, v0, v2}, Lcom/metamoji/nt/NtNoteController;->_changeUnitbarAndToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private handleSetNoteMode(Lcom/metamoji/cm/CmContext;)V
    .locals 8

    .line 6516
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->whileNoteModeChang:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 6520
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 6521
    const-string v1, "index"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 6527
    :cond_1
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_VIEW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_3

    .line 6528
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_4

    .line 6529
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_ARRANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_5

    .line 6530
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_PEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_6

    .line 6531
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_ERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_7

    .line 6532
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_SELECT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_9

    .line 6533
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_0
    return-void

    .line 6537
    :cond_9
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_a

    move v5, v3

    goto :goto_1

    :cond_a
    move v5, v4

    .line 6540
    :goto_1
    iput-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->whileNoteModeChang:Z

    .line 6542
    iput-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 6545
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 6546
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    .line 6547
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 6548
    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v6

    .line 6549
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v6, :cond_c

    .line 6550
    :cond_b
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->setNoteModeForSchool(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 6553
    :cond_c
    iput-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 6554
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v6, :cond_e

    .line 6556
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    if-eqz v2, :cond_d

    .line 6557
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->end()V

    .line 6560
    :cond_d
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    .line 6567
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->updateCommandStateForJumpSettingMode()V

    .line 6569
    :cond_e
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v6, :cond_f

    .line 6570
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v2}, Lcom/metamoji/ui/LaserPointerCanvas;->disable()V

    .line 6573
    :cond_f
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 6574
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v6

    if-eq v6, v3, :cond_14

    const/4 v7, 0x2

    if-eq v6, v7, :cond_13

    const/4 v7, 0x3

    if-eq v6, v7, :cond_12

    const/4 v7, 0x4

    if-eq v6, v7, :cond_11

    const/16 v7, 0x9

    if-eq v6, v7, :cond_10

    goto :goto_2

    .line 6589
    :cond_10
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_2

    .line 6586
    :cond_11
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_2

    .line 6583
    :cond_12
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_2

    .line 6580
    :cond_13
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_2

    .line 6577
    :cond_14
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 6595
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 6637
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v0, :cond_15

    .line 6638
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeOnTransitingToViewMode()V

    .line 6640
    :cond_15
    invoke-direct {p0, v4}, Lcom/metamoji/nt/NtNoteController;->changeToLaserMode(Z)V

    goto :goto_3

    .line 6620
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object p1

    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v2, :cond_16

    .line 6621
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeOnTransitingToViewMode()V

    .line 6623
    :cond_16
    sget-object p1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, p1, :cond_17

    if-eqz v5, :cond_18

    .line 6624
    :cond_17
    invoke-direct {p0, v4}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode(Z)V

    .line 6626
    :cond_18
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, p1, :cond_1a

    .line 6632
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->jumpSettingModeStart()V

    goto :goto_3

    .line 6602
    :pswitch_2
    const-string v0, "button"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v1, p1, :cond_19

    .line 6606
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->setDelaySelectTextUnit(Z)V

    .line 6609
    :cond_19
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->changeToolModeInConsiderationOfTextMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6612
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtNoteController;->setDelaySelectTextUnit(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtNoteController;->setDelaySelectTextUnit(Z)V

    .line 6613
    throw p1

    .line 6645
    :cond_1a
    :goto_3
    iput-boolean v4, p0, Lcom/metamoji/nt/NtNoteController;->whileNoteModeChang:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleTextPenSet()V
    .locals 0

    return-void
.end method

.method private handleTextUnitPenEdit()V
    .locals 0

    return-void
.end method

.method private hideEditLayerInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 10552
    sget v1, Lcom/metamoji/noteanytime/R$color;->transparent:I

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo(Ljava/lang/String;I)V

    return-void
.end method

.method private insertPagesCore(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V
    .locals 9

    .line 5257
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5260
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$36;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$36;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-static {p1, v0, v1, v8}, Lcom/metamoji/nt/NtPasteDataUtil;->importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 p1, -0x1

    if-eqz p2, :cond_0

    .line 5279
    const-string v0, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    .line 5282
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p1

    :cond_1
    move v3, p1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 5284
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/nt/NtNoteController;->addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5272
    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_Error_AppUnsupportedData:I

    invoke-static {p2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    .line 5273
    const-string p2, "failed to retrieve page data in pasteboard."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private internalSetEditLayerEditable(Z)V
    .locals 2

    .line 2647
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    .line 2651
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTargetLayerType()Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v0

    .line 2653
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne v0, v1, :cond_5

    .line 2673
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_2

    .line 2677
    iget-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    if-nez p1, :cond_1

    .line 2679
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2681
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 2689
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->requestResumeCommand()V

    return-void

    .line 2695
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v0, :cond_3

    .line 2696
    sget-object p1, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->changeToolModeInConsiderationOfTextMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2701
    :cond_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->requestSuspendCommand()V

    .line 2704
    iget-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    if-nez p1, :cond_4

    .line 2705
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    return-void

    .line 2708
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    const/4 v0, 0x1

    .line 2709
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideDetailWindow(Z)V

    :cond_5
    return-void
.end method

.method private isViewmodeOperation(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtDocument$EditMode;)Z
    .locals 2

    .line 1657
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtEditorWindowController$EditOperation:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1664
    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method private linkJump(Lcom/metamoji/nt/NtUnitController;Landroid/graphics/PointF;Landroid/graphics/Rect;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 8220
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    .line 8221
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    .line 8224
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 8225
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Sprite;->parentToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtUnitController;->linkHitTest(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_6

    .line 8230
    invoke-static {v1}, Lcom/metamoji/un/link/MMJUnLinkUnit;->canHandleOpenURLString(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8231
    invoke-static {v1, v3, p3}, Lcom/metamoji/un/link/MMJUnLinkUnit;->performJumpWithURLString(Ljava/lang/String;ZLandroid/graphics/Rect;)V

    return v3

    .line 8236
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->isWebUnitEnabled()Z

    move-result p3

    if-nez p3, :cond_2

    .line 8238
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8239
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8240
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8242
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_2
    if-eqz p1, :cond_5

    .line 8249
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p3

    const-string v2, "$web"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 8250
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p3

    .line 8251
    check-cast p1, Lcom/metamoji/un/web/UnWebUnit;

    .line 8252
    invoke-static {p1, p0, p3}, Lcom/metamoji/un/web/UnWebUnit;->isEditableUnit(Lcom/metamoji/un/web/UnWebUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_1
    xor-int/lit8 v2, p3, 0x1

    if-eqz p1, :cond_4

    .line 8260
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object p2

    .line 8262
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 8263
    invoke-interface {p1, p2, v1, p3, v2}, Lcom/metamoji/nt/INtEditor;->prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 8265
    :cond_5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->openUrl(Landroid/net/Uri;)V

    :cond_6
    :goto_2
    return v0
.end method

.method private makeNewPageFromTemplateModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 5

    .line 7588
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 7589
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7599
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7600
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7601
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->makePasteboardExtrasFromPageModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v0

    .line 7603
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtNoteController$59;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/NtNoteController$59;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-static {v2, v3, v4, v0}, Lcom/metamoji/nt/NtPasteDataUtil;->exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    .line 7625
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_1
    return-object v1

    .line 7617
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7618
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-static {p1, v3, v0, v1}, Lcom/metamoji/nt/NtDocumentTemplate;->newPageFromPageData(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtDocument;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 7620
    invoke-virtual {p0, v1, p1, v2}, Lcom/metamoji/nt/NtNoteController;->makePasteboardExtras(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 7625
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_3
    return-object v3

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 7627
    :cond_4
    throw p1
.end method

.method private makePasteboardExtrasFromPageModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 7631
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 7632
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 7633
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v2

    .line 7634
    invoke-static {}, Lcom/metamoji/ctold/CtFactory;->instance()Lcom/metamoji/ctold/CtFactory;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/ctold/CtFactory;->createDocTagManager(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v1

    .line 7636
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createPasteboardExtrasMakeManager()Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;

    move-result-object v2

    .line 7637
    new-instance v3, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ctold/CtDocTagManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    .line 7638
    const-string v0, "pageId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7639
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7640
    new-array p1, p1, [Lcom/metamoji/ctold/CtTaggableObject;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private onChangeFocusUnit(Lcom/metamoji/nt/NtFocusManager;)V
    .locals 4

    .line 1759
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_prevFocusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 1760
    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    .line 1762
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_prevFocusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 1763
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v1

    .line 1765
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const-string v3, "$text"

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_8

    .line 1766
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1769
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeOnFocusChanged(Lcom/metamoji/un/text/UnTextUnit;)V

    return-void

    .line 1771
    :cond_0
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v1, v2, :cond_8

    if-eqz p1, :cond_1

    .line 1772
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1775
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeOnFocusChanged()V

    :cond_2
    if-eq v0, p1, :cond_8

    .line 1778
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_3

    .line 1779
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1782
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeOnFocusChanged()V

    .line 1787
    :cond_4
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    const/4 p1, 0x0

    if-eqz v0, :cond_7

    .line 1793
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->hasUnitBackgroundColor()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitNotDelWhenEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    move v1, p1

    :goto_0
    if-eqz v1, :cond_6

    .line 1799
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move p1, v1

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 1807
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1808
    instance-of v1, p1, Lcom/metamoji/nt/NtUnitController;

    if-eqz v1, :cond_8

    .line 1809
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    if-eqz p1, :cond_8

    .line 1814
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUnitController;->removeUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/CmContext;)V

    .line 1820
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1821
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    :cond_8
    return-void
.end method

.method private onTextSelectModeTap(Landroid/graphics/PointF;)V
    .locals 3

    .line 8319
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    const/4 v1, 0x0

    .line 8320
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    .line 8322
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8327
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->createTextUnitWithTapPoint(Landroid/graphics/PointF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onViewModeTapInnerForSchool(ZLandroid/graphics/PointF;Landroid/graphics/Rect;)V
    .locals 8

    .line 10647
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10648
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 10649
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 10651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10652
    const-string/jumbo v3, "system:common"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10653
    const-string/jumbo v4, "system:edit"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10655
    const-string/jumbo v4, "system:personal"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const-string/jumbo v4, "system:offline_personal"

    .line 10657
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "system:teacher_personal"

    .line 10659
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 10662
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v1, :cond_5

    .line 10666
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10667
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitController;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 10671
    invoke-direct {p0, v1, p2, p3}, Lcom/metamoji/nt/NtNoteController;->linkJump(Lcom/metamoji/nt/NtUnitController;Landroid/graphics/PointF;Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2

    .line 10672
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/metamoji/nt/NtNoteController;->playFromVoiceTag(Lcom/metamoji/nt/NtUnitController;Landroid/graphics/PointF;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_4

    .line 10675
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    .line 10676
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v3

    .line 10677
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    move-object v7, v3

    move v3, v1

    move-object v1, v7

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    return-void
.end method

.method private onViewportScrollChanging()V
    .locals 2

    .line 7745
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method private onWillChangeFocusUnit([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 1735
    aget-object v0, p1, v0

    check-cast v0, Lcom/metamoji/nt/NtFocusManager;

    .line 1736
    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    const/4 v1, 0x1

    .line 1737
    aget-object p1, p1, v1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 1739
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v1

    .line 1741
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 1742
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "$text"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1745
    :cond_0
    instance-of p1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    move-object v3, v0

    :cond_1
    if-eqz v3, :cond_2

    .line 1749
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    :cond_2
    return-void
.end method

.method private pastePageFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZ)V
    .locals 8

    const/4 v0, 0x1

    .line 5624
    new-array v7, v0, [Ljava/lang/String;

    .line 5625
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$43;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/nt/NtNoteController$43;-><init>(Lcom/metamoji/nt/NtNoteController;ZLcom/metamoji/df/model/IModelManager;IZ[Ljava/lang/String;)V

    new-instance p1, Lcom/metamoji/nt/NtNoteController$44;

    invoke-direct {p1, p0, v7}, Lcom/metamoji/nt/NtNoteController$44;-><init>(Lcom/metamoji/nt/NtNoteController;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private performMovePageUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 6427
    const-string p1, "f"

    const/4 v0, -0x1

    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 6428
    const-string/jumbo v2, "t"

    invoke-interface {p2, v2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 6431
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 6432
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    .line 6434
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    .line 6438
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 6439
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;

    move-result-object v5

    if-lez v0, :cond_0

    add-int/lit8 v6, v0, -0x1

    .line 6442
    invoke-virtual {p0, v6}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v6

    .line 6444
    :cond_0
    move-object v7, v3

    check-cast v7, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->movePage(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 6448
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtNoteController;->movePage(II)V

    .line 6449
    invoke-virtual {v3}, Lcom/metamoji/df/controller/DfPageController;->getPageIndex()I

    move-result v0

    if-eqz v4, :cond_2

    .line 6450
    invoke-virtual {v4}, Lcom/metamoji/df/controller/DfPageController;->getPageIndex()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    .line 6452
    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 6453
    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    if-eqz v6, :cond_3

    .line 6462
    invoke-virtual {p0, v6}, Lcom/metamoji/nt/NtNoteController;->sendMovePagesDirection(Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;)V

    :cond_3
    return-void
.end method

.method private performPageUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 4250
    const-string/jumbo v0, "u"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 4252
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 4253
    const-string p1, "p"

    invoke-interface {p2, p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    .line 4254
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v2

    if-eq p1, v2, :cond_2

    .line 4255
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    .line 4265
    invoke-direct {p0, v1, v0}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZ)V

    .line 4270
    :cond_2
    const-string/jumbo p1, "t"

    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4272
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    :cond_3
    return-void
.end method

.method private playFromVoiceTag(Lcom/metamoji/nt/NtUnitController;Landroid/graphics/PointF;)Z
    .locals 2

    .line 8292
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 8293
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtUnitController;->tagHitTest(Landroid/graphics/PointF;)Lcom/metamoji/ctold/CtTaggableObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8296
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8297
    instance-of v1, p2, Lcom/metamoji/ctold/CtTaggableObject;

    if-eqz v1, :cond_0

    move-object v0, p2

    :cond_0
    const/4 p2, 0x0

    if-eqz v0, :cond_1

    .line 8302
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8304
    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v0, p2}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8306
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->playFromVoiceTagInstances(Ljava/util/List;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method private processAfterCurrentPageChanged(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4686
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZLcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method private processAfterCurrentPageChanged(ZZLcom/metamoji/cm/IAction1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 4694
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 4695
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4696
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/nt/NtDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 4698
    const-string p1, "RestoringPage"

    invoke-virtual {v1, p1}, Lcom/metamoji/df/controller/ControllerContext;->setCancellable(Ljava/lang/String;)V

    .line 4701
    :cond_0
    new-instance p1, Lcom/metamoji/nt/NtNoteController$29;

    invoke-direct {p1, p0, v0, v1, p3}, Lcom/metamoji/nt/NtNoteController$29;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/cm/IAction1;)V

    if-eqz p2, :cond_1

    .line 4728
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v1, p3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 4730
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4733
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->adjustFocusUnitOnPageDisplayed()V

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    .line 4735
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 788
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;-><init>(Lcom/metamoji/nt/NtNoteController-IA;)V

    .line 789
    const-string v1, "pageundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 790
    const-string v1, "addpagesundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 791
    const-string v1, "removepagesundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 792
    const-string v1, "movepageundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 793
    const-string v1, "applytemplateundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 796
    const-string/jumbo v1, "schoolpagetypeundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private removePagesCore(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6140
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6143
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6147
    new-instance v2, Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    .line 6150
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    .line 6153
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6154
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 6157
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 6159
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v7

    .line 6160
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_3

    .line 6162
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6167
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 6168
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 6170
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 6172
    invoke-interface {v8, v7}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 6182
    const-string v1, "removepagesundo"

    invoke-static {p0, v1, v3}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 6183
    const-string v6, "r"

    invoke-interface {v1, v6, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 6184
    const-string v5, "i"

    invoke-interface {v1, v5, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 6185
    const-string v5, "p"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 6189
    :cond_7
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->removePages(Ljava/util/List;)V

    if-nez v0, :cond_8

    .line 6194
    const-string p1, "n"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 6195
    invoke-virtual {v2, v1, v3}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 6199
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 6200
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;

    move-result-object p1

    .line 6201
    invoke-virtual {p1, v4}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->setRemovePageIDs(Ljava/util/List;)V

    .line 6202
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->sendRemovePagesDirection(Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    if-eqz v2, :cond_a

    .line 6207
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    .line 6209
    :cond_a
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast p1, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_b

    .line 6207
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_4

    .line 6209
    :cond_b
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 6211
    :goto_4
    throw p1
.end method

.method private scrollWhenPageChange(Ljava/lang/String;)V
    .locals 7

    .line 5051
    const-string v0, "nochange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5055
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 5057
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 5059
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    .line 5060
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5061
    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 5062
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    .line 5063
    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 5065
    const-string v3, "left"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, -0x3e900000    # -15.0f

    if-eqz v3, :cond_2

    .line 5067
    iget p1, v2, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v6

    if-gtz p1, :cond_1

    iget p1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v6

    if-gez p1, :cond_c

    .line 5068
    :cond_1
    iput v4, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    .line 5070
    :cond_2
    const-string/jumbo v3, "top"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5072
    iget p1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v6

    if-gtz p1, :cond_3

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v6

    if-gez p1, :cond_c

    .line 5073
    :cond_3
    iput v4, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 5075
    :cond_4
    const-string/jumbo v3, "right"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v5, 0x41700000    # 15.0f

    if-eqz v3, :cond_6

    .line 5077
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result p1

    .line 5078
    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_5

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_c

    .line 5079
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result v2

    sub-float/2addr p1, v2

    add-float/2addr p1, v5

    iput p1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 5081
    :cond_6
    const-string v3, "bottom"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5083
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result p1

    .line 5084
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_7

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_c

    .line 5085
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result v2

    sub-float/2addr p1, v2

    add-float/2addr p1, v5

    iput p1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 5087
    :cond_8
    const-string v3, "leftTop"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5089
    iget p1, v2, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v6

    if-gtz p1, :cond_9

    iget p1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v6

    if-gez p1, :cond_a

    .line 5090
    :cond_9
    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 5093
    :cond_a
    iget p1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v6

    if-gtz p1, :cond_b

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v6

    if-gez p1, :cond_c

    .line 5094
    :cond_b
    iput v4, v1, Landroid/graphics/PointF;->y:F

    :cond_c
    :goto_0
    const/4 p1, 0x0

    .line 5101
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void

    .line 5097
    :cond_d
    const-string/jumbo v0, "unknown place specified : %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setGroupListInner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10047
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolGroupList"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10049
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v2, "map"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 10050
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 10052
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 10055
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtNoteController$69;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$69;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 10066
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V

    .line 10070
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtNoteController$70;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/nt/NtNoteController$70;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setNumberOfTouchesPanGesture(I)V
    .locals 1

    .line 8144
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->isFocusUnitRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8145
    const-string/jumbo v0, "setNumberOfTouchesPanGesture called when rootUnit has been focused"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 8146
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->setNumberOfTouchesPanGesture(I)V

    return-void
.end method

.method private startTextSelectMode()V
    .locals 1

    const/4 v0, 0x1

    .line 8440
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setNumberOfTouchesPanGesture(I)V

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 805
    const-string v0, "pageundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 806
    const-string v0, "addpagesundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 807
    const-string v0, "removepagesundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 808
    const-string v0, "movepageundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 809
    const-string v0, "applytemplateundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 812
    const-string/jumbo v0, "schoolpagetypeundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private updateEditLayerInfo(Ljava/lang/String;I)V
    .locals 2

    .line 10557
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 10559
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 10562
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/metamoji/nt/INtEditor;->showEditLayerInfo(Ljava/lang/String;I)V

    goto :goto_0

    .line 10564
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->hideEditLayerInfo()V

    .line 10568
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10571
    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolBtn()V

    .line 10574
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    .line 10575
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10576
    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolUserList()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 5429
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5430
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5431
    new-instance v1, Lcom/metamoji/nt/NtNoteController$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtNoteController$38;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void

    .line 5441
    :cond_0
    invoke-static {p2}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 5442
    new-instance v1, Lcom/metamoji/cm/mutable/Mutable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/metamoji/cm/mutable/Mutable;-><init>(Ljava/lang/Object;)V

    .line 5443
    new-instance v2, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    new-instance v3, Lcom/metamoji/nt/NtNoteController$39;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/metamoji/nt/NtNoteController$39;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/cm/mutable/Mutable;)V

    new-instance v4, Lcom/metamoji/nt/NtNoteController$40;

    invoke-direct {v4, p0, p1, p2}, Lcom/metamoji/nt/NtNoteController$40;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 5496
    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    if-nez p1, :cond_1

    return-void

    .line 5502
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p2

    .line 5505
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5508
    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 5518
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void

    .line 5514
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/metamoji/nt/NtNoteController;->pastePageFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5518
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 5516
    :try_start_2
    const-string v0, "NtNoteController.addPageWithDoc"

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5518
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void

    :catchall_1
    move-exception p2

    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, v0}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    .line 5519
    throw p2
.end method

.method public addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5299
    new-instance v0, Lcom/metamoji/nt/NtNoteController$37;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    move v6, p4

    move v8, p5

    move v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/nt/NtNoteController$37;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;IZLjava/util/Map;ZLjava/lang/String;Z)V

    if-eqz p5, :cond_0

    .line 5415
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void

    .line 5417
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public addUndoOrRedoListener(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->add(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V

    return-void
.end method

.method adjustFocusUnitOnCurrentLayerChanged()V
    .locals 3

    .line 3672
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    if-nez v0, :cond_2

    .line 3673
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3676
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTargetLayerType()Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v1

    .line 3679
    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    if-eqz v1, :cond_2

    .line 3698
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 3704
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->refreshDetailWindow()V

    return-void
.end method

.method public allowEveryoneAnswer()Z
    .locals 3

    .line 10746
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolAllowEveryoneAnswer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public appendUserToGroupList(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11064
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11066
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->appendUserToGroupListInner(Ljava/util/Map;)V

    return-void

    .line 11069
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11070
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;

    move-result-object v0

    .line 11071
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->setUserDic(Ljava/util/Map;)V

    .line 11072
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11074
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 11075
    const-string/jumbo p1, "sent NtGroupListAppendUserDirectionData %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11077
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->destroy()V

    :cond_2
    return-void
.end method

.method appendUserToGroupListInner(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11084
    const-string/jumbo v0, "user-id"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11085
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 11090
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 11091
    monitor-enter v0

    .line 11092
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11093
    check-cast v2, Ljava/util/Map;

    .line 11094
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 11095
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11096
    const-string/jumbo v3, "user-list"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 11098
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11099
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    .line 11100
    const-string/jumbo p1, "user-list"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11105
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11107
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method appendUsers(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10176
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10177
    check-cast v2, Ljava/util/Map;

    .line 10178
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10180
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 10185
    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10186
    const-string/jumbo v1, "user-list"

    invoke-static {v2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 10187
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10188
    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_0

    .line 10197
    :cond_3
    invoke-direct {p0, p3}, Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V

    return-void
.end method

.method public applyFormTemplate(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z
    .locals 11

    .line 7432
    sget-object v0, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 7433
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7435
    new-instance v3, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;

    invoke-direct {v3, p0, v2}, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 7438
    :goto_1
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_2

    .line 7441
    const-string v5, "applytemplateundo"

    invoke-static {p0, v5}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 7442
    invoke-interface {v5, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 7446
    :goto_2
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 7447
    sget-object v6, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$ui$library$sheet$LibrarySheetViewDialog$SheetChangeType:[I

    invoke-virtual {p2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    .line 7484
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    .line 7485
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    .line 7489
    sget-object v9, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-ne p2, v9, :cond_4

    .line 7494
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v6

    .line 7495
    const-string v9, "MMJNtDocumentSettings"

    invoke-virtual {v6, v9}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 7496
    instance-of v9, v6, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v9, :cond_3

    .line 7497
    check-cast v6, Lcom/metamoji/nt/NtDocumentSettings;

    .line 7498
    const-string v9, "ofc"

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v10

    invoke-interface {v5, v9, v10}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 7499
    invoke-virtual {v6, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setFrontCover(Z)V

    .line 7500
    const-string v6, "nfc"

    invoke-interface {v5, v6, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_3
    move v6, v8

    goto :goto_3

    :cond_4
    move v7, v8

    .line 7504
    :goto_3
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/metamoji/nt/NtNoteController;->makeNewPageFromTemplateModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v8

    if-nez v8, :cond_5

    .line 7506
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/nt/NtDocumentTemplate;->newPage(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v8

    .line 7509
    :cond_5
    sget-object v9, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-ne p2, v9, :cond_6

    .line 7511
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 7518
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result v9

    .line 7521
    invoke-static {v9, v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 7523
    :cond_6
    invoke-virtual {p0, v7, v8}, Lcom/metamoji/nt/NtNoteController;->insertPageAt(ILcom/metamoji/df/model/IModel;)V

    .line 7526
    invoke-direct {p0, p1, v7, v3, v4}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V

    .line 7529
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    .line 7532
    const-string p1, "leftTop"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->scrollWhenPageChange(Ljava/lang/String;)V

    .line 7541
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7542
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_7

    .line 7545
    const-string v8, "a"

    invoke-interface {v5, v8, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 7546
    const-string v8, "i"

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v5, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 7547
    const-string v8, "p"

    invoke-interface {v5, v8, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 7551
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7552
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;

    move-result-object v6

    .line 7554
    sget-object v8, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-ne p2, v8, :cond_8

    sub-int/2addr v7, v1

    .line 7556
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 7562
    :cond_8
    invoke-virtual {v6, p1, v2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertPageModels(Ljava/util/List;Ljava/lang/String;)V

    .line 7563
    invoke-virtual {p0, v6}, Lcom/metamoji/nt/NtNoteController;->sendInsertPagesDirection(Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)V

    goto :goto_7

    .line 7479
    :pswitch_1
    invoke-direct {p0, p1, v7, v3, v4}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V

    goto :goto_7

    .line 7471
    :pswitch_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMultiSelectedPageIndexs()Ljava/util/ArrayList;

    move-result-object p2

    .line 7472
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7473
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V

    goto :goto_4

    .line 7462
    :pswitch_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result p2

    .line 7463
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v2

    :goto_5
    if-ge v2, p2, :cond_9

    .line 7465
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7458
    :pswitch_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p2

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V

    goto :goto_7

    .line 7450
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result p2

    :goto_6
    if-ge v7, p2, :cond_9

    .line 7452
    invoke-direct {p0, p1, v7, v3, v4}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;ILcom/metamoji/df/controller/EditContext;Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-eqz v0, :cond_a

    .line 7574
    const-string p1, "pd"

    invoke-interface {v5, p1, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 7575
    invoke-virtual {v3, v5, v1}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    if-eqz v0, :cond_b

    .line 7579
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_8

    .line 7581
    :cond_b
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast p1, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    :goto_8
    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_c

    .line 7579
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_9

    .line 7581
    :cond_c
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast p2, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 7583
    :goto_9
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method applyPasteboardExtras(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 5783
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    .line 5785
    invoke-virtual {v0, p1, p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->applyPasteboardExtras(Ljava/util/Map;Lcom/metamoji/nt/NtNoteController;I)V

    return-void
.end method

.method askCollabolizeIfNeeded()V
    .locals 5

    .line 3751
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_askCollabolizeOnBeginningOfEdit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3752
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_askCollabolizeOnBeginningOfEdit:Z

    .line 3756
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$19;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$19;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    const-wide/16 v2, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackgroundEx(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected beforeChangingCurrentPage()V
    .locals 0

    .line 3350
    invoke-super {p0}, Lcom/metamoji/df/controller/DfNoteController;->beforeChangingCurrentPage()V

    .line 3353
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    return-void
.end method

.method public beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;
    .locals 4

    .line 4200
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4201
    instance-of v1, p1, Lcom/metamoji/nt/INoNeedCurrentPageUndo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 4203
    :cond_1
    :goto_0
    const-string v1, "pageundo"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 4204
    const-string v2, "p"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 4205
    const-string/jumbo v2, "u"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    .line 4206
    instance-of p1, p1, Lcom/metamoji/nt/INoNeedUpdatePageThumbnailUndo;

    if-eqz p1, :cond_2

    .line 4207
    const-string/jumbo p1, "t"

    invoke-interface {v1, p1, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 4210
    :cond_2
    invoke-virtual {v0, v1, v3}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    return-object v0
.end method

.method public bindToWindow()V
    .locals 0

    .line 7975
    invoke-super {p0}, Lcom/metamoji/df/controller/DfNoteController;->bindToWindow()V

    return-void
.end method

.method boothIdArrayOnPage(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10612
    const-string v1, "pageId"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10615
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10617
    invoke-static {v1}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10625
    invoke-static {p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result p2

    .line 10626
    invoke-static {p1, v1, p2, p3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 10628
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10630
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10632
    invoke-static {p1, v1, p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getPersonalLayerIds(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 10633
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 10634
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method broadcastEraserChangedWithIndex(I)V
    .locals 3

    .line 6966
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtToolChangedContext;

    sget-object v2, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-direct {v1, v2, p1}, Lcom/metamoji/nt/NtToolChangedContext;-><init>(Lcom/metamoji/nt/NtToolChangedContext$Kind;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method broadcastPenChangedWithIndex(I)V
    .locals 3

    .line 6930
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtToolChangedContext;

    sget-object v2, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-direct {v1, v2, p1}, Lcom/metamoji/nt/NtToolChangedContext;-><init>(Lcom/metamoji/nt/NtToolChangedContext$Kind;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method public canGoBackPage()Z
    .locals 1

    .line 7927
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForwardPage()Z
    .locals 3

    .line 7931
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected canRestoreOnPurge()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method changeFocusUnitDuringTextToolMode(Lcom/metamoji/nt/NtFocusOption;)Z
    .locals 4

    .line 3171
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 3174
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 3178
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 3184
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusOption;->getTapPos()Landroid/graphics/PointF;

    move-result-object p1

    .line 3186
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 3187
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3191
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_4

    .line 3193
    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->isEditableTextUnit()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->isSelectableTextUnit()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    if-eqz v0, :cond_6

    .line 3198
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "$text"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3200
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 3201
    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 3202
    new-instance v1, Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFocusOption;-><init>()V

    .line 3203
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtFocusOption;->setTapPos(Landroid/graphics/PointF;)V

    .line 3204
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    .line 3205
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p1, :cond_5

    .line 3207
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v2
.end method

.method public changePenSettings(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 3

    .line 6824
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 6828
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MazecPenPaletteCurrentTab"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    .line 6830
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/nt/NtNoteController;->changePenSettings(Lcom/metamoji/nt/share/NtPenStyle;I)V

    return-void
.end method

.method public changePenSettings(Lcom/metamoji/nt/share/NtPenStyle;I)V
    .locals 6

    .line 6839
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    if-gez p2, :cond_0

    .line 6841
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result p2

    .line 6847
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v1

    .line 6848
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getShapePenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v2

    .line 6849
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 6851
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 6852
    const-string v3, "forSchoolShapePenMode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 6853
    const-string/jumbo v3, "shapemarkerpen"

    const-string/jumbo v4, "shapepen"

    const-string v5, "markerpen"

    if-eqz v1, :cond_2

    .line 6858
    iget-object v1, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6860
    iput-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    goto :goto_0

    .line 6864
    :cond_1
    iput-object v4, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 6878
    :goto_0
    invoke-virtual {v2, p1, p2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 6879
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    goto :goto_2

    .line 6884
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 6887
    iget-object v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6889
    iput-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    goto :goto_1

    .line 6893
    :cond_3
    iput-object v4, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 6907
    :goto_1
    invoke-virtual {v2, p1, p2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 6915
    :goto_2
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->broadcastPenChangedWithIndex(I)V

    .line 6917
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PEN_UPDATE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 6918
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/text/MazecAction;->sendPenInfo(Landroid/view/View;)V

    return-void
.end method

.method public changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V
    .locals 1

    const/4 v0, 0x0

    .line 2465
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;)V

    return-void
.end method

.method public changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController$TargetLayerType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2468
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    return-void
.end method

.method public changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController$TargetLayerType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 2471
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez p3, :cond_7

    .line 2476
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    .line 2477
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->presenterPersonalLayerInfo()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    .line 2480
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    .line 2481
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2484
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    .line 2485
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2487
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 2494
    :goto_0
    sget-object p3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const-string v1, "layerId"

    if-eq p1, p3, :cond_5

    .line 2495
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p2, :cond_2

    .line 2498
    invoke-static {p2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2499
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->isTeacherPlersonalLayer(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2501
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto/16 :goto_1

    .line 2503
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2505
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object p3

    .line 2506
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2507
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto :goto_1

    .line 2513
    :cond_2
    sget-object p3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne p1, p3, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_4

    .line 2515
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p3

    .line 2516
    invoke-virtual {p3}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2517
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    .line 2518
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayer()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2519
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto :goto_1

    .line 2521
    :cond_3
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto :goto_1

    .line 2525
    :cond_4
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2527
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object p3

    .line 2528
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2529
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto :goto_1

    .line 2541
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p3

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    .line 2544
    invoke-static {p2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2545
    invoke-static {p3}, Lcom/metamoji/nt/NtPageController;->isTeacherPlersonalLayer(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2547
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    goto :goto_1

    .line 2550
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2552
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2559
    :cond_7
    :goto_1
    sget-object p3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne p1, p3, :cond_8

    if-nez p2, :cond_8

    .line 2560
    sget-object p1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2562
    :cond_8
    iget-object p3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne p3, p1, :cond_9

    iget-object p3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    if-ne p3, p2, :cond_9

    goto :goto_2

    .line 2573
    :cond_9
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2576
    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    .line 2578
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_LAYER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->toInt()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2581
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2582
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->correctCurrentPageLayer()V

    .line 2584
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->adjustFocusUnitOnCurrentLayerChanged()V

    .line 2587
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_d

    .line 2588
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2590
    new-instance p3, Lcom/metamoji/nt/NtLayerChangedEventContext;

    invoke-direct {p3}, Lcom/metamoji/nt/NtLayerChangedEventContext;-><init>()V

    .line 2591
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/metamoji/nt/NtLayerChangedEventContext;->layerId:Ljava/lang/String;

    .line 2593
    invoke-virtual {v0, p3, p2}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 2597
    :cond_b
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 2599
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabels()V

    .line 2602
    :cond_c
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2604
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabels()V

    .line 2611
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    new-instance p3, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {p3}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 2615
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2616
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast p1, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    :cond_e
    :goto_2
    return-void
.end method

.method public changeToNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 4

    .line 6484
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$53;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$53;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public changeToViewMode()V
    .locals 4

    .line 6470
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$52;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$52;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public changeToolModeInConsiderationOfTextMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 7

    .line 2253
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne v3, v4, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    return-void

    .line 2274
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    .line 2275
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v3

    .line 2276
    sget-object v4, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7

    sget-object v4, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, v4, :cond_7

    sget-object v4, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq p1, v4, :cond_7

    .line 2277
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 2278
    instance-of v3, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_2

    :cond_4
    move-object v3, v5

    .line 2279
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeOnModeChanging(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    if-eqz v1, :cond_5

    .line 2280
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v1, v5

    :cond_5
    if-eqz v1, :cond_6

    .line 2285
    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v3, :cond_6

    move-object v1, v5

    :cond_6
    move-object v3, v1

    move v1, v2

    goto/16 :goto_8

    .line 2288
    :cond_7
    sget-object v4, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v3, v4, :cond_8

    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v3, :cond_10

    :cond_8
    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v3, :cond_10

    .line 2289
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2291
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2292
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v3, v5

    :goto_3
    if-eqz v3, :cond_a

    .line 2294
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_a

    .line 2295
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitController;

    if-eqz v1, :cond_a

    .line 2296
    instance-of v1, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_a

    goto/16 :goto_6

    .line 2302
    :cond_a
    invoke-virtual {p0, v2, v5, v2, v2}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZ)V

    return-void

    .line 2308
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2309
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_c
    move-object v3, v5

    :goto_4
    if-eqz v3, :cond_d

    .line 2310
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_d

    .line 2311
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtUnitController;

    if-nez v4, :cond_d

    .line 2312
    instance-of v4, v4, Lcom/metamoji/un/text/UnTextUnit;

    if-nez v4, :cond_d

    move v4, v1

    goto :goto_5

    :cond_d
    move v4, v2

    :goto_5
    if-eqz v4, :cond_f

    if-eqz v3, :cond_12

    .line 2318
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v2, v6, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_f

    .line 2322
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_f

    .line 2323
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitController;

    if-eqz v3, :cond_f

    .line 2324
    instance-of v6, v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v6, :cond_f

    .line 2325
    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    .line 2326
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->isEditableTextUnit()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->isSelectableTextUnit()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    move v1, v4

    goto :goto_7

    .line 2334
    :cond_10
    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    move v1, v2

    :cond_12
    :goto_7
    move-object v3, v5

    .line 2338
    :goto_8
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    if-eqz v1, :cond_13

    .line 2341
    sget-object v4, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v4, :cond_15

    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne p1, v0, :cond_15

    :cond_13
    if-eqz v1, :cond_14

    .line 2343
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeOnModeChanging()V

    goto :goto_9

    .line 2345
    :cond_14
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->startTextSelectMode()V

    .line 2347
    iget-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2349
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2352
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, v5}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2358
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2362
    sget-object p1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->broadcastToolModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2367
    iget-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    if-nez p1, :cond_15

    .line 2368
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtNoteController$6;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$6;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_9
    if-eqz v3, :cond_17

    .line 2380
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 2383
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_delaySelectTextUnit:Z

    if-eqz v0, :cond_16

    .line 2384
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$7;

    invoke-direct {v1, p0, p1, v3}, Lcom/metamoji/nt/NtNoteController$7;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 2396
    :cond_16
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$8;

    invoke-direct {v1, p0, p1, v3}, Lcom/metamoji/nt/NtNoteController$8;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 2406
    :cond_17
    :goto_a
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DETAIL_WINDOW:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2407
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_WRIST_GUARD:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 2354
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2355
    throw v0
.end method

.method public checkJoinedClassNote()V
    .locals 8

    .line 11120
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11121
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;

    move-result-object v0

    .line 11122
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 11123
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11124
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 11125
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;->setUserId(Ljava/lang/String;)V

    .line 11126
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11128
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    const-string v7, "ROOM"

    const-string v4, "TheNote"

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 11129
    const-string/jumbo v1, "sent NtCheckIfJoinClassNoteDirectionData %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11131
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;->destroy()V

    :cond_1
    return-void
.end method

.method public clearLaserPointer()V
    .locals 2

    .line 4170
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    if-eqz v0, :cond_0

    .line 4171
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$26;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$26;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public closeDetailWindowAndEnsurePenMode()V
    .locals 1

    .line 5168
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5170
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    :cond_0
    return-void
.end method

.method public collaboModeNumber()Ljava/lang/Integer;
    .locals 2

    .line 3969
    const-string v0, "collaboMode"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getEditValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3973
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method collabolizeFromCabinet()V
    .locals 5

    .line 3874
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    .line 3875
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

    const/4 v2, 0x0

    const-string v3, "MMJNtDocumentSettings"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_2

    .line 3876
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    .line 3877
    iput-boolean v4, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

    .line 3878
    iput-boolean v4, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    .line 3881
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3882
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocumentSettings;->getShareTemplateDic()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3887
    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setShareTemplateDic(Ljava/util/Map;)V

    .line 3888
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->saveModels()V

    .line 3893
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/nt/NtNoteController$23;

    invoke-direct {v3, p0, v0, v4, v1}, Lcom/metamoji/nt/NtNoteController$23;-><init>(Lcom/metamoji/nt/NtNoteController;ZLjava/util/Map;Z)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 3904
    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForBlankPaper:Z

    if-eqz v1, :cond_5

    .line 3905
    iput-boolean v4, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForBlankPaper:Z

    .line 3907
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3908
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getShareTemplateDic()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3911
    invoke-static {}, Lcom/metamoji/ns/NsCollaboUtils;->createDummyShareTemplateDic()Ljava/util/Map;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    .line 3917
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setShareTemplateDic(Ljava/util/Map;)V

    .line 3918
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->saveModels()V

    .line 3923
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$24;

    invoke-direct {v2, p0, v0, v3}, Lcom/metamoji/nt/NtNoteController$24;-><init>(Lcom/metamoji/nt/NtNoteController;ZLjava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 3933
    :cond_5
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForSubmitByStudent:Z

    if-eqz v0, :cond_6

    .line 3934
    iput-boolean v4, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForSubmitByStudent:Z

    .line 3937
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$25;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$25;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method collabolizeFromShareNote()V
    .locals 3

    .line 3822
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEdit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3823
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEdit:Z

    .line 3826
    invoke-static {}, Lcom/metamoji/ns/NsCollaboUtils;->createDummyShareTemplateDic()Ljava/util/Map;

    move-result-object v0

    .line 3830
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$21;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtNoteController$21;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method collabolizeFromTemplate()V
    .locals 3

    .line 3787
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3788
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTemplate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3790
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3791
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getShareTemplateDic()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3796
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setShareTemplateDic(Ljava/util/Map;)V

    .line 3797
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->saveModels()V

    :cond_0
    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 3805
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/nt/NtNoteController$20;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/nt/NtNoteController$20;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public collabolizeToOtherShareNoteFromCabinet()V
    .locals 5

    .line 3841
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 3843
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    const/4 v1, 0x0

    .line 3844
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

    .line 3845
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    .line 3848
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3849
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getShareTemplateDic()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 3854
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtDocumentSettings;->setShareTemplateDic(Ljava/util/Map;)V

    .line 3855
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->saveModels()V

    .line 3857
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    .line 3861
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtNoteController$22;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/metamoji/nt/NtNoteController$22;-><init>(Lcom/metamoji/nt/NtNoteController;ZLjava/util/Map;Z)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method correctCurrentPageLayer()V
    .locals 8

    .line 3401
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 3405
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v2, :cond_0

    .line 3416
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    return-void

    .line 3421
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->ordinal()I

    move-result v0

    const-string v2, "layerName"

    const-string v3, "layerId"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 3502
    :pswitch_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3504
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 3505
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    const/4 v2, 0x0

    if-eqz v5, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    .line 3514
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCommonLayer()I

    move-result v0

    .line 3515
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3516
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3517
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3521
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3522
    const-string v0, "%s_offline"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3523
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToPersonal(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {v1, v0, v5}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToOfflinePersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    goto :goto_1

    .line 3527
    :cond_4
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToPersonal(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    .line 3529
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    .line 3532
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/nt/NtNoteController$15;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtNoteController$15;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 3508
    :cond_5
    :goto_2
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 3509
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    return-void

    .line 3448
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 3449
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3450
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v0

    .line 3451
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3452
    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getUserIdFromTeacherPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 3454
    :cond_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_7

    .line 3458
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    return-void

    .line 3461
    :cond_7
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3464
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCommonLayer()I

    move-result v2

    .line 3465
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3466
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3467
    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3470
    :cond_8
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToTeacherPersonal(Ljava/lang/String;)V

    goto :goto_6

    .line 3437
    :pswitch_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-nez v0, :cond_9

    .line 3438
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    return-void

    .line 3441
    :cond_9
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToPersonalTemplate()V

    goto :goto_6

    .line 3478
    :pswitch_3
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 3480
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 3481
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v0, v5

    :goto_4
    if-eqz v5, :cond_d

    if-nez v0, :cond_b

    goto :goto_5

    .line 3489
    :cond_b
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCommonLayer()I

    move-result v0

    .line 3490
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3491
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3492
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3495
    :cond_c
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToPersonal(Ljava/lang/String;)V

    goto :goto_6

    .line 3484
    :cond_d
    :goto_5
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    return-void

    .line 3430
    :pswitch_4
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToCommon()V

    goto :goto_6

    .line 3426
    :pswitch_5
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToPrivate()V

    goto :goto_6

    .line 3423
    :pswitch_6
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToEdit()V

    .line 3553
    :goto_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/nt/NtNoteController$16;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtNoteController$16;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 3579
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3581
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 3582
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3583
    const-string v3, "personalId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3584
    const-string v4, "personalName"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3585
    const-string v5, "isGroup"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3586
    const-string v6, "isTeacherPersonalLayer"

    invoke-static {v2, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v7, v5

    move v5, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v7

    .line 3587
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->viewingLayerChanged(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTextUnitFromPlainText(Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V
    .locals 5

    .line 3296
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3299
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModelFromPlainText(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;Z)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 3300
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    const/4 v2, 0x0

    .line 3301
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v4, "toFocus"

    invoke-virtual {v1, v4, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3302
    const-string/jumbo v2, "toSelect"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3305
    const-string v3, "location"

    invoke-virtual {p2, v3, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p2, :cond_0

    .line 3307
    invoke-virtual {v1, v3, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 3318
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    .line 3319
    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtDocument;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v2

    .line 3320
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    .line 3321
    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtDocument;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_1
    return-void
.end method

.method public currentPageRestored()V
    .locals 2

    const/4 v0, 0x1

    .line 3713
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->adjustFocusUnitOnPageDisplayed()V

    .line 3714
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->distributeCollaboNoteIfNeeded()V

    .line 3715
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->askCollabolizeIfNeeded()V

    .line 3716
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->collabolizeFromTemplate()V

    .line 3717
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->collabolizeFromShareNote()V

    .line 3719
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->collabolizeFromCabinet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3721
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isReady:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isReady:Z

    .line 3724
    throw v1
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    const/4 v0, 0x0

    .line 1460
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_autoScroller:Lcom/metamoji/nt/NtAutoScroller;

    .line 1461
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    .line 1462
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->dispose()V

    .line 1463
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    .line 1464
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_prevFocusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 1466
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1467
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method distributeCollaboNoteIfNeeded()V
    .locals 2

    .line 3732
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_distributeNoteOnBeginningOfEdit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3733
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_distributeNoteOnBeginningOfEdit:Z

    .line 3736
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$18;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$18;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public endEdit(Lcom/metamoji/df/controller/EditContext;)V
    .locals 4

    .line 4223
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/nt/INoNeedCurrentPageUndo;

    if-nez v0, :cond_3

    .line 4224
    :cond_0
    const-string v0, "pageundo"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 4225
    const-string v2, "p"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 4226
    const-string/jumbo v2, "u"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 4227
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/metamoji/nt/INoNeedUpdatePageThumbnailUndo;

    if-eqz v1, :cond_1

    .line 4228
    const-string/jumbo v1, "t"

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 4231
    :cond_1
    invoke-virtual {p1, v0, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 4234
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/nt/INoNeedUpdatePageThumbnailUndo;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->isSignificantUndoExist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4235
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 4242
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void
.end method

.method public endTextSelectModeIfNeeded()V
    .locals 2

    .line 8465
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8466
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->endTextSelectMode()V

    :cond_0
    return-void
.end method

.method enterTextToolModeOnFocusChanged(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 2

    .line 2994
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2995
    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZ)V

    :cond_0
    return-void
.end method

.method enterTextToolModeOnModeChanging()V
    .locals 5

    .line 2968
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2970
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2971
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2972
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    .line 2973
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2974
    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2976
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2977
    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 2978
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2980
    iput-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2981
    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 2987
    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZ)V

    return-void
.end method

.method enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2959
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZLandroid/graphics/PointF;)V

    return-void
.end method

.method enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZLandroid/graphics/PointF;)V
    .locals 2

    .line 2862
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 2865
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    .line 2868
    new-instance p3, Lcom/metamoji/nt/NtNoteController$10;

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/metamoji/nt/NtNoteController$10;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/INtEditor;ZZ)V

    invoke-interface {p2, p0, p3}, Lcom/metamoji/nt/INtEditor;->showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V

    return-void

    .line 2910
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p3

    .line 2911
    invoke-interface {p3}, Lcom/metamoji/nt/INtEditor;->showStatusBar()V

    .line 2914
    invoke-interface {p3}, Lcom/metamoji/nt/INtEditor;->getPageListViewStatus()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-interface {p3, v1}, Lcom/metamoji/nt/INtEditor;->setPageListViewStatus(I)V

    .line 2915
    :cond_1
    invoke-interface {p3}, Lcom/metamoji/nt/INtEditor;->getJumpListViewStatus()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p3, v1}, Lcom/metamoji/nt/INtEditor;->setJumpListViewStatus(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 2919
    sget-object p1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    :cond_3
    const/4 p1, 0x1

    if-nez p2, :cond_6

    .line 2925
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 2926
    new-instance p3, Lcom/metamoji/cm/CmContext;

    invoke-direct {p3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 2927
    const-string/jumbo v0, "tapPos"

    sget-object v1, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2928
    const-string/jumbo v0, "toFocus"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2929
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "toSelect"

    invoke-virtual {p3, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_4

    .line 2931
    const-string v0, "location"

    invoke-virtual {p3, v0, p5}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2935
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 2939
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2941
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2942
    invoke-virtual {p5, p2, p3}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 2945
    throw p1

    .line 2947
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p3

    .line 2948
    invoke-virtual {p3, p2}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/UnTextUnit;

    :cond_6
    if-eqz p4, :cond_7

    if-eqz p2, :cond_7

    .line 2952
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p3

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    .line 2955
    :cond_7
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/metamoji/nt/INtEditor;->setTextUnitInputStyleBarVisible(Z)V

    return-void
.end method

.method public extractText()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1711
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 1712
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getPagesIterator(Lcom/metamoji/df/controller/ControllerContext;)Lcom/metamoji/df/controller/DfNoteController$PagesIterator;

    move-result-object v0

    const-string v1, ""

    .line 1713
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1714
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->next()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPageController;

    .line 1715
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->extractText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1716
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1717
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1719
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1722
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;->release()V

    return-object v1
.end method

.method public findUnitById(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;
    .locals 0

    .line 8696
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtNoteController;->findUnitById(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    return-object p1
.end method

.method public fireThumbnailChangeEvent(Lcom/metamoji/nt/NtPageController;)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onThumbnailChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public followPresenterWithPage(Ljava/lang/String;Landroid/graphics/RectF;D)Z
    .locals 0

    .line 8738
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/metamoji/ns/NsCollaboManager;->setDelayJumpPageId(Ljava/lang/String;)V

    .line 8740
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 8742
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8748
    :cond_0
    new-instance p3, Lcom/metamoji/cm/CmContext;

    invoke-direct {p3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 8750
    const-string p4, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8751
    const-string p1, "rect"

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8754
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/NtNoteController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 8757
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-eqz p1, :cond_2

    .line 8758
    invoke-virtual {p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePagesStatusDidChange()V

    goto :goto_0

    .line 8762
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtPageController;->fitToRect(Landroid/graphics/RectF;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getAppFrame()Lcom/metamoji/nt/INtAppFrame;
    .locals 0

    return-object p0
.end method

.method public getAutoScrollSupporter()Lcom/metamoji/nt/IAutoScrollSupporter;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_autoScroller:Lcom/metamoji/nt/NtAutoScroller;

    return-object v0
.end method

.method public getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10348
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10351
    check-cast v1, Ljava/util/Map;

    .line 10353
    const-string v2, "group-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10354
    const-string v3, "TEACHER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10357
    :cond_1
    const-string/jumbo v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10359
    monitor-enter v2

    .line 10360
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 10361
    const-string/jumbo v5, "user-id"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 10362
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10363
    monitor-exit v2

    return-object v1

    .line 10366
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChatData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2806
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "chatdata"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2811
    :cond_0
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 656
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->getWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0
.end method

.method public bridge synthetic getCurrentPage()Lcom/metamoji/df/controller/DfPageController;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()Lcom/metamoji/nt/NtPageController;
    .locals 1

    .line 667
    invoke-super {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    return-object v0
.end method

.method public getCurrentPageIndexForUI()I
    .locals 3

    .line 7695
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    .line 7696
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    const-string v2, "MMJNtDocumentSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7697
    instance-of v2, v1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v2, :cond_0

    .line 7698
    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;
    .locals 2

    .line 1701
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1702
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 8965
    const-string v0, "TheNote"

    return-object v0
.end method

.method public getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDocument()Lcom/metamoji/df/controller/DfDocument;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    return-object v0
.end method

.method public getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 1

    .line 1930
    const-string v0, "editMode"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getEditValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument$EditMode;->valueOf(I)Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    return-object v0
.end method

.method public getEditValue(Ljava/lang/String;)I
    .locals 3

    .line 4049
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4051
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v2, "?editstatus"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4053
    invoke-interface {v0, p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 4056
    :cond_0
    const-string p1, "model is null or can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return v1
.end method

.method public getEditValueAsDictionary(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4087
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4089
    const-string p1, "can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4092
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getEditValueAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 4076
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4078
    const-string p1, "can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4081
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method public getEditValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4066
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4068
    const-string p1, "can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4071
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEditorDelegate()Lcom/metamoji/nt/INtEditor;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->mFlipUnitManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    return-object v0
.end method

.method public getFocusUnit()Lcom/metamoji/nt/NtUnitController;
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusUnitType()Ljava/lang/String;
    .locals 1

    .line 4163
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4165
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getGroupDic(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10223
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10224
    check-cast v0, Ljava/util/Map;

    .line 10225
    const-string v1, "group-id"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10226
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10006
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolGroupList"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 10011
    :cond_0
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 10324
    const-string v1, "TEACHER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 10325
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10329
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10331
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10332
    check-cast v2, Ljava/util/Map;

    .line 10333
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 10334
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10335
    const-string p1, "group-name"

    invoke-static {v2, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    return-object v0
.end method

.method public getJumpBackLink()Ljava/lang/String;
    .locals 1

    .line 3950
    const-string v0, "jumpBackLink"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    return-object v0
.end method

.method public getLocation(IILandroid/graphics/RectF;Lcom/metamoji/nt/NtLinkJump$Type;)Lcom/metamoji/nt/NtJumpLocation;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 8502
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    const/high16 v6, 0x42a00000    # 80.0f

    if-eq v2, v5, :cond_3

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v6, 0x42340000    # 45.0f

    goto :goto_0

    :cond_2
    const/high16 v6, 0x42700000    # 60.0f

    .line 8523
    :cond_3
    :goto_0
    iget v12, v3, Landroid/graphics/RectF;->left:F

    .line 8524
    iget v13, v3, Landroid/graphics/RectF;->top:F

    .line 8525
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v14

    .line 8526
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v15

    .line 8527
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v3, v6, v2

    .line 8528
    new-instance v7, Lcom/metamoji/nt/NtJumpLocation;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v2, v14

    const/4 v8, 0x0

    move-object/from16 v10, p4

    invoke-direct/range {v7 .. v15}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    move-object v8, v7

    .line 8529
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getStageBackgroundColor()I

    move-result v2

    move-object v5, v4

    .line 8532
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v6, v5

    new-instance v5, Lcom/metamoji/cm/SizeF;

    invoke-direct {v5, v14, v15}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    move-object v7, v6

    new-instance v6, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v6, v2}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v2

    move-object/from16 v16, v7

    move v7, v2

    move-object/from16 v2, v16

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8537
    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/metamoji/nt/NtJumpLocation;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 8538
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 8543
    :cond_4
    iget-object v2, v0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtLinkJumpManager;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 8546
    iget-object v3, v0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    if-ge v1, v2, :cond_5

    .line 8544
    invoke-virtual {v3, v8, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->insertBackLink(Lcom/metamoji/nt/NtJumpLocation;I)V

    return-object v8

    .line 8546
    :cond_5
    invoke-virtual {v3, v8}, Lcom/metamoji/nt/NtLinkJumpManager;->addLink(Lcom/metamoji/nt/NtJumpLocation;)V

    return-object v8
.end method

.method public getMemberListForGroupId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 10234
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 10235
    monitor-enter v0

    .line 10236
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->getGroupDic(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 10238
    monitor-exit v0

    return-object v1

    .line 10241
    :cond_0
    const-string/jumbo v2, "user-list"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 10243
    monitor-exit v0

    return-object v1

    .line 10245
    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getMutableCanonicalPageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8865
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "canonicalPageList"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8869
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getNoMemberGroupIdInGroupList()Ljava/lang/String;
    .locals 5

    .line 10201
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 10202
    monitor-enter v0

    .line 10203
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10204
    check-cast v2, Ljava/util/Map;

    .line 10205
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10207
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    .line 10208
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 10213
    :cond_1
    const-string/jumbo v4, "user-list"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10214
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 10215
    monitor-exit v0

    return-object v3

    .line 10218
    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 5

    .line 1897
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$EditMode:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument$EditMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 1918
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1903
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtDocument$ToolMode:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument$ToolMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1915
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1913
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1911
    :cond_2
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1909
    :cond_3
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1907
    :cond_4
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1905
    :cond_5
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1901
    :cond_6
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1899
    :cond_7
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0
.end method

.method public getNoteModeForSchool()Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 3

    .line 1944
    const-string v0, "noteModeForSchool"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getEditValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1946
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-object v0

    .line 1948
    :cond_0
    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    .line 1951
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_2

    .line 1952
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1954
    instance-of v2, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    .line 1960
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1961
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_2

    .line 1962
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    :cond_2
    return-object v0
.end method

.method public getNumberOfPagesForUI()I
    .locals 3

    .line 7709
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    .line 7710
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    const-string v2, "MMJNtDocumentSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7711
    instance-of v2, v1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getObjectListener()Lcom/metamoji/ctold/CtObjectListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPage(I)Lcom/metamoji/df/controller/DfPageController;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    return-object p1
.end method

.method public getPage(I)Lcom/metamoji/nt/NtPageController;
    .locals 0

    .line 8723
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtPageController;

    return-object p1
.end method

.method public getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;
    .locals 1

    .line 9477
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    return-object v0
.end method

.method public getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 1

    .line 9484
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCurrentModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 11166
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentModel:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 11169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public getSearchCurrentPosition()Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 1

    .line 11183
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentPosition:Lcom/metamoji/nt/NtTextSearchPosition;

    return-object v0
.end method

.method public getSoundUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->mSoundUnitManager:Lcom/metamoji/un/sound/UnSoundUnitManager;

    return-object v0
.end method

.method public getStageBackgroundColor()I
    .locals 2

    .line 1679
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$color;->main_stage_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getStudentCount()I
    .locals 5

    .line 9980
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 9981
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9982
    check-cast v2, Ljava/util/Map;

    .line 9984
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9985
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9988
    :cond_1
    const-string/jumbo v3, "user-list"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 9990
    monitor-enter v2

    .line 9991
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 9992
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return v1
.end method

.method public getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->mSurveyUnitManager:Lcom/metamoji/un/survey/UnSurveyUnitManager;

    return-object v0
.end method

.method public getTargetLayerType()Lcom/metamoji/nt/NtNoteController$TargetLayerType;
    .locals 1

    .line 2457
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    return-object v0
.end method

.method public getTargetPersonalLayerInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10403
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;
    .locals 3

    .line 3328
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3330
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 3331
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->hasTextUnitSettings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3332
    new-instance v2, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitVerticalWriting()Z

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;-><init>(Lcom/metamoji/un/text/IUnTextSettings;Z)V

    return-object v2

    .line 3334
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getUseSystemTextSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3336
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v1

    const-string v2, "MMJNtTextSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtTextUnitSettings;

    .line 3337
    new-instance v2, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitVerticalWriting()Z

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;-><init>(Lcom/metamoji/un/text/IUnTextSettings;Z)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 2

    .line 1985
    const-string/jumbo v0, "toolMode"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getEditValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument$ToolMode;->valueOf(I)Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    .line 1986
    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object v0
.end method

.method public getUserNameForUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 10374
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10377
    check-cast v1, Ljava/util/Map;

    .line 10379
    const-string v2, "group-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10380
    const-string v3, "TEACHER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10383
    :cond_1
    const-string/jumbo v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 10385
    monitor-enter v1

    .line 10386
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 10387
    const-string/jumbo v4, "user-id"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 10388
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10389
    const-string/jumbo p1, "user-name"

    invoke-static {v3, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v1

    return-object p1

    .line 10392
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->mVideUnitManager:Lcom/metamoji/un/video/UnVideoUnitManager;

    return-object v0
.end method

.method goJumpHis()V
    .locals 3

    .line 9709
    iget v0, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 9710
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHis:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9711
    iget v1, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    if-eqz v0, :cond_1

    .line 9713
    invoke-static {v0}, Lcom/metamoji/nt/NtJumpLocation;->linkJumpWithURLString(Ljava/lang/String;)Lcom/metamoji/nt/NtJumpLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9715
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/metamoji/nt/NtJumpLocation;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method handleChangeGroupOfUserDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 9892
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 9893
    const-string v0, "YES"

    goto :goto_0

    :cond_0
    const-string v0, "NO"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "received ChangeGroupOfUserDirection bySendBack=%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9895
    new-instance v0, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;-><init>(Ljava/lang/Object;)V

    .line 9896
    const-string p1, "ChangeGroupOfUserDirection: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9898
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->userIds()Ljava/util/List;

    move-result-object p1

    .line 9899
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->toGroupId()Ljava/lang/String;

    move-result-object v1

    .line 9900
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->needsNoGroupMember()Z

    move-result v0

    if-eqz p1, :cond_1

    .line 9902
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/metamoji/nt/NtNoteController;->moveUserIds(Ljava/util/List;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method handleChangeLaserPointerColor(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 6744
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_LASER_POINTER_COLOR_CHANGED:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method handleCheckIfJoinClassNoteDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 9857
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 9858
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received NtCheckIfJoinClassNoteDirectionData bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9860
    new-instance p2, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;-><init>(Ljava/lang/Object;)V

    .line 9861
    const-string p1, "NtCheckIfJoinClassNoteDirectionData: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9863
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtCheckIfJoinClassNoteDirectionData;->userId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9865
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p2

    .line 9866
    invoke-virtual {p2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9867
    iget-object p2, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9868
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtNoteController$68;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController$68;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method handleDeletePageOnCollabo(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 5953
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5957
    :cond_0
    const-string v0, "pages"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 5958
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5963
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$49;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$49;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 8976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8978
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$62;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/metamoji/nt/NtNoteController$62;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/util/List;)V

    new-instance p1, Lcom/metamoji/nt/NtNoteController$63;

    invoke-direct {p1, p0, p3, v0}, Lcom/metamoji/nt/NtNoteController$63;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Runnable;Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-virtual {v1, v2, p2, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method handleExitJumpSettingMode()V
    .locals 3

    .line 6499
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 6500
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    .line 6501
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 6503
    :cond_0
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 6504
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6505
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtNoteController;->handleSetNoteMode(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method handleForSchoolAllowEveryoneAnswerDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 10875
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 10876
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received handleForSchoolAllowEveryoneAnswerDirection bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10878
    new-instance p2, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;-><init>(Ljava/lang/Object;)V

    .line 10879
    const-string p1, "handleForSchoolAllowEveryoneAnswerDirection: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10881
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->allowEveryoneAnswer()Z

    move-result p1

    const/4 p2, 0x0

    .line 10882
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->setAllowEveryoneAnswer(ZZ)V

    return-void
.end method

.method handleForSchoolHiddenStudentNameChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 10944
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 10945
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received ForSchoolHiddenStudentNameChangeDirectionDirection bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10947
    new-instance p2, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;-><init>(Ljava/lang/Object;)V

    .line 10948
    const-string p1, "ForSchoolHiddenStudentNameChangeDirection: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10950
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;->hiddenStudentName()Z

    move-result p1

    .line 10951
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "forSchoolHiddenStudentName"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 10953
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtNoteController$79;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController$79;-><init>(Lcom/metamoji/nt/NtNoteController;Z)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleForSchoolPageTypeChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 9915
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 9916
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received ForSchoolPageTypeChangeDirectionDirection bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9918
    new-instance p2, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;-><init>(Ljava/lang/Object;)V

    .line 9919
    const-string p1, "ForSchoolPageTypeChangeDirection: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9921
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->pageIds()Ljava/util/List;

    move-result-object p1

    .line 9922
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->schoolPageType()I

    move-result p2

    if-eqz p1, :cond_2

    .line 9925
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9926
    check-cast v0, Ljava/lang/String;

    .line 9927
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 9929
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 9930
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtPageController;->setSchoolPageType(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method handleForSchoolPersonalModeTypeChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 10805
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 10806
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received ForSchoolPersonalModeTypeChangeDirectionDirection bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10808
    new-instance p2, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;-><init>(Ljava/lang/Object;)V

    .line 10809
    const-string p1, "ForSchoolPersonalModeTypeChangeDirection: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10811
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->personalModeType()I

    move-result p1

    const/4 p2, 0x0

    .line 10812
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->setPersonalModeType(IZ)V

    .line 10815
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-nez p2, :cond_3

    .line 10816
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    .line 10817
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModeInfoDic()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 10820
    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    goto :goto_1

    .line 10823
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    goto :goto_1

    .line 10826
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtNoteController$75;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtNoteController$75;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 10835
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtNoteController$76;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$76;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolentlyForSchool(Lcom/metamoji/nt/NtPageController;Ljava/lang/Runnable;)V

    .line 10843
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    .line 10847
    :cond_3
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtNoteController$77;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtNoteController$77;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method handleGroupListAppendUserDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 9839
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 9840
    const-string p2, "YES"

    goto :goto_0

    :cond_0
    const-string p2, "NO"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "received NtGroupListAppendUserDirectionData bySendBack=%s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9842
    new-instance p2, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;-><init>(Ljava/lang/Object;)V

    .line 9843
    const-string p1, "NtGroupListAppendUserDirectionData: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9845
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtGroupListAppendUserDirectionData;->userDic()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9847
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->appendUserToGroupListInner(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method handleHideSearchTextBar(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 7004
    invoke-static {p1, p1, p1, v0, p1}, Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    .line 7006
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7008
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtSearchTextBar;->hide()V

    .line 7015
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    new-instance v1, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {v1}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method handleInsertPagesDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 11

    .line 9061
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    .line 9062
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "received InsertPagesDirection bySendBack=%b"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9069
    new-instance v1, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lcom/metamoji/df/model/IModel;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    invoke-direct {v1, v2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 9070
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "InsertPagesDirection: %s"

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9073
    invoke-virtual {v1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->resolvePageModelCompatibility()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9074
    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->unknownDataFound(Lcom/metamoji/ns/direction/NsReceivedDirection;)V

    return-void

    .line 9078
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertionCount()I

    move-result p1

    .line 9081
    const-string v2, "pageId"

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_5

    move v0, v5

    move v6, v0

    :goto_0
    if-ge v0, p1, :cond_6

    .line 9084
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->refPageIDAtIndex(I)Ljava/lang/String;

    move-result-object v7

    .line 9085
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->pageModelsAtIndex(I)Ljava/util/List;

    move-result-object v8

    if-eqz v7, :cond_1

    .line 9089
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 9091
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    .line 9094
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/df/model/IModel;

    add-int/2addr v7, v4

    .line 9097
    invoke-interface {v9, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9098
    invoke-virtual {p0, v10}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v10

    if-ne v3, v10, :cond_3

    .line 9100
    invoke-virtual {p0, v7, v9}, Lcom/metamoji/nt/NtNoteController;->insertPageAt(ILcom/metamoji/df/model/IModel;)V

    move v6, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v6, v5

    .line 9116
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getMutableCanonicalPageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    :goto_3
    if-ge v5, p1, :cond_b

    .line 9119
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->refPageIDAtIndex(I)Ljava/lang/String;

    move-result-object v7

    .line 9120
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->pageModelsAtIndex(I)Ljava/util/List;

    move-result-object v8

    if-eqz v7, :cond_7

    .line 9124
    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_8

    .line 9126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_4

    :cond_7
    move v7, v3

    .line 9129
    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/df/model/IModel;

    add-int/2addr v7, v4

    .line 9132
    invoke-interface {v9, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9133
    invoke-interface {v0, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_9

    .line 9135
    invoke-interface {v0, v7, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 9139
    :cond_b
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "canonicalPageList"

    invoke-interface {p1, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 9142
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->reflectCanonicalPageList()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move v4, v6

    .line 9151
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/nt/NtNoteController;->makeNotifyBoothIdDic(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)Ljava/util/Map;

    move-result-object p1

    .line 9163
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 9164
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/NsCollaboManager;->addNotifyBoothUpdated(Ljava/util/Map;)Ljava/lang/String;

    :cond_d
    if-eqz v4, :cond_e

    .line 9174
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_e
    return-void
.end method

.method public handleInternalAddPage(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 3266
    const-string v0, "insPage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3271
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtNoteDataProvider;->getImportSource(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 3276
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->insertPagesCore(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public handleInternalAddTextUnit(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 3286
    const-string v0, "insText"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3288
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/nt/NtNoteController;->createTextUnitFromPlainText(Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method handleLinkJumpAdd(Lcom/metamoji/cm/CmContext;)V
    .locals 7

    .line 8585
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8587
    const-string p1, "Failed to create PageLinkJump"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void

    .line 8597
    :cond_0
    new-instance v6, Lcom/metamoji/nt/NtPageLinkJump;

    invoke-direct {v6, v0}, Lcom/metamoji/nt/NtPageLinkJump;-><init>(Lcom/metamoji/nt/NtPageController;)V

    .line 8599
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportHeight()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 8600
    iget v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 8601
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v2

    .line 8602
    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-direct {v3, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/high16 v4, 0x42f00000    # 120.0f

    div-float v1, v4, v1

    .line 8605
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getStageBackgroundColor()I

    move-result v4

    move v5, v4

    .line 8606
    new-instance v4, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v4, v5}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8608
    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/metamoji/nt/NtLinkJump;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 8609
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 8613
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "insertIndex"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8614
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLinkJumpManager;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 8617
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    if-ge v0, v1, :cond_2

    .line 8615
    move-object v1, v6

    check-cast v1, Lcom/metamoji/nt/NtJumpLocation;

    invoke-virtual {v2, v1, v0}, Lcom/metamoji/nt/NtLinkJumpManager;->insertBackLink(Lcom/metamoji/nt/NtJumpLocation;I)V

    goto :goto_0

    .line 8617
    :cond_2
    move-object v0, v6

    check-cast v0, Lcom/metamoji/nt/NtJumpLocation;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtLinkJumpManager;->addLink(Lcom/metamoji/nt/NtJumpLocation;)V

    .line 8619
    :goto_0
    const-string v0, "insertedLinkJumpObj"

    invoke-virtual {p1, v0, v6}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method handleLinkJumpBack(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 8650
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getJumpBackLink()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8652
    invoke-static {p1}, Lcom/metamoji/nt/NtLinkJump;->linkJumpWithURLString(Ljava/lang/String;)Lcom/metamoji/nt/NtJumpLocation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8654
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/nt/NtLinkJump;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z

    :cond_0
    return-void
.end method

.method handleLinkJumpDelete(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 8625
    const-string v0, "linkjumps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8626
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtLinkJumpManager;->removeLinks(Ljava/util/List;)V

    return-void
.end method

.method handleLinkJumpJump(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 8643
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->handlePageJump(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method handleLinkJumpMove(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 8633
    const-string v0, "fromLinkJumpIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtJumpLocation;

    .line 8634
    const-string/jumbo v2, "toLinkJumpIndex"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtJumpLocation;

    .line 8635
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/nt/NtLinkJumpManager;->moveTo(Lcom/metamoji/nt/NtJumpLocation;Lcom/metamoji/nt/NtJumpLocation;)V

    return-void
.end method

.method handleMakeGroupDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 9879
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    if-eqz p2, :cond_0

    .line 9880
    const-string v0, "YES"

    goto :goto_0

    :cond_0
    const-string v0, "NO"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "received MakeGroupDirection bySendBack=%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9882
    new-instance v0, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;-><init>(Ljava/lang/Object;)V

    .line 9883
    const-string p1, "MakeGroupDirection: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9885
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;->groupDic()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9887
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->makeGroup(Ljava/util/Map;Z)V

    :cond_1
    return-void
.end method

.method handleMovePagesDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 10

    .line 9327
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    .line 9328
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "received MovePagesDirection bySendBack=%b"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9335
    new-instance v0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    const-class v1, Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;-><init>(Ljava/util/Map;)V

    .line 9336
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "MovePagesDirection: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9337
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->moveCount()I

    move-result p1

    .line 9340
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getMutableCanonicalPageList()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    :goto_0
    if-ge v4, p1, :cond_5

    .line 9344
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->refPageIDAtIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 9345
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->pageIDsAtIndex(I)Ljava/util/List;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 9349
    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 9351
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v2

    .line 9354
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    .line 9357
    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_3

    if-eq v8, v9, :cond_3

    .line 9359
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ge v9, v8, :cond_2

    goto :goto_3

    :cond_2
    move v5, v8

    .line 9363
    :goto_3
    invoke-interface {v1, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v5, v8

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9367
    :cond_5
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "canonicalPageList"

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 9368
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->reflectCanonicalPageList()Z

    move-result p1

    goto :goto_7

    :cond_6
    move v1, v4

    :goto_4
    if-ge v4, p1, :cond_b

    .line 9373
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->refPageIDAtIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 9374
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->pageIDsAtIndex(I)Ljava/util/List;

    move-result-object v6

    if-eqz v5, :cond_7

    .line 9378
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v5

    if-ne v2, v5, :cond_8

    .line 9380
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v5

    sub-int/2addr v5, v3

    goto :goto_5

    :cond_7
    move v5, v2

    .line 9383
    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/2addr v5, v3

    .line 9386
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v7

    if-eq v2, v7, :cond_9

    if-eq v5, v7, :cond_9

    .line 9388
    invoke-virtual {p0, v7, v5}, Lcom/metamoji/nt/NtNoteController;->movePage(II)V

    move v1, v3

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    move p1, v1

    :goto_7
    if-eqz p1, :cond_c

    .line 9407
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_c
    return-void
.end method

.method handleRedo()V
    .locals 3

    .line 4778
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 4779
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4780
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$31;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtNoteController$31;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModelManager;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method

.method handleRemovePagesDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 8

    .line 9182
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    .line 9183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "received RemovePagesDirection bySendBack=%b"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9187
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    .line 9188
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 9191
    new-instance v1, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    const-class v2, Ljava/util/Map;

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;-><init>(Ljava/util/Map;)V

    .line 9192
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "RemovePagesDirection: %s"

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9193
    invoke-virtual {v1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->removePageIDs()Ljava/util/List;

    move-result-object p1

    .line 9199
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "canonicalPageList"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 9201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 9203
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    .line 9204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_1

    .line 9206
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 9207
    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9211
    :cond_1
    :goto_1
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 9212
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 9213
    const-string p1, "ignore remove pages direction..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 9221
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9223
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 9225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9228
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_7

    .line 9230
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 9231
    invoke-virtual {p0, v6}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 9233
    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 9235
    invoke-interface {v7, v6}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_3

    .line 9240
    :cond_6
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->removePages(Ljava/util/List;)V

    move v1, v5

    goto :goto_4

    :cond_7
    move v1, v3

    .line 9254
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getMutableCanonicalPageList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 9256
    invoke-interface {v4, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9257
    iget-object v6, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v6, v2, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 9260
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->reflectCanonicalPageList()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v5

    .line 9266
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    const-string v4, "MMJNsShareSettings"

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboSettings;

    .line 9268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9271
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->removeUpdatedBoothIdFromPageId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v3, v5

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    .line 9281
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$64;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtNoteController$64;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_b
    if-eqz v1, :cond_c

    .line 9297
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 9302
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 9303
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 9304
    const-string p1, "current page changed when handleing RemovePagesDirection"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 9307
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 9308
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 9309
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    .line 9312
    :cond_d
    invoke-direct {p0, v5, v5}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZ)V

    :cond_e
    return-void
.end method

.method handleSearchText(Lcom/metamoji/cm/CmContext;ZZ)V
    .locals 11

    .line 7039
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7041
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->getTextSearchFactory()Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-nez v6, :cond_1

    return-void

    .line 7052
    :cond_1
    const-string/jumbo v0, "searchWord"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7053
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 7054
    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_1

    :cond_2
    move-object v10, v1

    .line 7056
    :goto_1
    const-string v0, "ignoreCase"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7057
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 7058
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v5, p1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 7061
    :goto_2
    const-string p1, "next"

    const-string v2, "prev"

    if-eqz p3, :cond_4

    move-object v3, p1

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    filled-new-array {v3, v10}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "search text {0} : keyword : ({1})"

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 7062
    :goto_4
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_6

    if-eqz p3, :cond_5

    move-object v4, p1

    goto :goto_5

    :cond_5
    move-object v4, v2

    .line 7063
    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    aget-char v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v7, "search text {0} : keyword code : {1,0:X5}"

    invoke-static {v7, v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 7066
    :cond_6
    new-instance v4, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-direct {v4}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;-><init>()V

    .line 7071
    new-instance v8, Lcom/metamoji/nt/NtNoteController$55;

    invoke-direct {v8, p0, v4, v6}, Lcom/metamoji/nt/NtNoteController$55;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    .line 7123
    new-instance v9, Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    invoke-direct {v9, p0}, Lcom/metamoji/nt/NtNoteController$SearchTextContext;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    .line 7124
    iput-boolean v0, v9, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->cancelEnd:Z

    .line 7125
    iput-boolean v0, v9, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->findModel:Z

    .line 7126
    iput-object v1, v9, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    .line 7127
    iput-object v1, v9, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

    .line 7130
    iput-object v1, v9, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->searchFromModel:Lcom/metamoji/df/model/IModel;

    .line 7132
    new-instance v2, Lcom/metamoji/nt/NtNoteController$56;

    move-object v3, p0

    move v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/metamoji/nt/NtNoteController$56;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;ZLcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtNoteController$SearchTextContext;Ljava/lang/String;)V

    .line 7377
    new-instance p1, Lcom/metamoji/nt/NtNoteController$57;

    invoke-direct {p1, p0, v9, v6, p2}, Lcom/metamoji/nt/NtNoteController$57;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$SearchTextContext;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Z)V

    .line 7395
    new-instance p2, Lcom/metamoji/nt/NtNoteController$58;

    invoke-direct {p2, p0, v4}, Lcom/metamoji/nt/NtNoteController$58;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)V

    .line 7411
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 7412
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method handleSearchTextNext(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 7029
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/nt/NtNoteController;->handleSearchText(Lcom/metamoji/cm/CmContext;ZZ)V

    return-void
.end method

.method handleSearchTextPrev(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7033
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/nt/NtNoteController;->handleSearchText(Lcom/metamoji/cm/CmContext;ZZ)V

    return-void
.end method

.method handleSetEraser(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 6939
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtEraserSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtEraserSettings;

    .line 6941
    const-string v1, "index"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6942
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtEraserSettings;->setCurrentIndex(I)V

    .line 6943
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->broadcastEraserChangedWithIndex(I)V

    .line 6944
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method handleSetPen(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 6706
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 6707
    const-string v1, "index"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6709
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 6712
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->handleSetPen2(Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 6715
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPenSettings;->setCurrentIndex(I)V

    .line 6716
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->broadcastPenChangedWithIndex(I)V

    .line 6717
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method handleSetPen2(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 6725
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 6728
    const-string v1, "index"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6729
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 6731
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPenSettings;->setCurrentIndex(I)V

    .line 6732
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->broadcastPenChangedWithIndex(I)V

    .line 6733
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 6737
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->showPenAttr(IZ)V

    return-void
.end method

.method handleSetSelectType(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 6951
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6953
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "RubberBandKindIndex"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 6954
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->broadcastSelectChanged(I)V

    .line 6955
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTRUBBERBANDKIND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method handleShowPenAttr(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 6753
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6754
    const-string v1, "fromMazec"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6755
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->showPenAttr(IZ)V

    return-void
.end method

.method handleShowSearchTextBar(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 6988
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 6991
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6993
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 6994
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 6997
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6999
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updateSearchTextBarPosition()V

    .line 7000
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtSearchTextBar;->show()V

    :cond_1
    return-void
.end method

.method handleTextShowHideMazec()V
    .locals 2

    .line 6973
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6976
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_1

    .line 6977
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_1

    .line 6979
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->toggleSoftInput(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method handleUndo()V
    .locals 3

    .line 4747
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 4748
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4749
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$30;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtNoteController$30;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModelManager;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method

.method public hiddenStudentName()Z
    .locals 3

    .line 10891
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolHiddenStudentName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 1169
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 1172
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string v0, "linkjumps"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtLinkJumpManager;->loadFromModel(Lcom/metamoji/df/model/IModel;)V

    const/4 v0, 0x1

    .line 1177
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    .line 1181
    :cond_0
    new-instance p1, Lcom/metamoji/nt/NtFocusManager;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtFocusManager;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    .line 1182
    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->init()V

    .line 1185
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    new-instance v0, Lcom/metamoji/nt/NtNoteController$4;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$4;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFocusManager;->setFocusOrPageChangedCallback(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1191
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    new-instance v0, Lcom/metamoji/nt/NtNoteController$5;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNoteController$5;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFocusManager;->setWillFocusOrPageChangeCallback(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1198
    new-instance p1, Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/LaserPointerCanvas;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    .line 1200
    new-instance p1, Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p1, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    .line 1203
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1205
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    .line 1206
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->attachmentsManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    const-string v1, "TheAttachMan"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->makeDirectableWithDirectionManager(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    .line 1213
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    const-string v1, "TheRecordingsMan"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->makeDirectableWithDirectionManager(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    .line 1217
    :cond_1
    new-instance p1, Lcom/metamoji/un/video/UnVideoUnitManager;

    invoke-direct {p1, p0}, Lcom/metamoji/un/video/UnVideoUnitManager;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->mVideUnitManager:Lcom/metamoji/un/video/UnVideoUnitManager;

    .line 1219
    new-instance p1, Lcom/metamoji/un/sound/UnSoundUnitManager;

    invoke-direct {p1, p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->mSoundUnitManager:Lcom/metamoji/un/sound/UnSoundUnitManager;

    .line 1222
    new-instance p1, Lcom/metamoji/un/flip/UnFlipUnitManager;

    invoke-direct {p1, p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->mFlipUnitManager:Lcom/metamoji/un/flip/UnFlipUnitManager;

    .line 1224
    new-instance p1, Lcom/metamoji/un/survey/UnSurveyUnitManager;

    invoke-direct {p1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->mSurveyUnitManager:Lcom/metamoji/un/survey/UnSurveyUnitManager;

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 1

    .line 1235
    invoke-super {p0, p1, p2}, Lcom/metamoji/df/controller/DfNoteController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 1238
    new-instance p1, Lcom/metamoji/nt/NtInteractiveEventManager;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/metamoji/nt/NtInteractiveEventManager;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    .line 1239
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 1240
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtInteractiveEventManager;->addLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 1241
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 1242
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 1245
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 1246
    iget-object p2, p1, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->mUserDrawingStartHandler:Lcom/metamoji/nt/NtNoteController$UserDrawingStartHandler;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1247
    iget-object p1, p1, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController;->mUserDrawingEndHandler:Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1250
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->init()V

    return-void
.end method

.method public initSheet(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V
    .locals 6

    .line 1259
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_initialized:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 1262
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_initialized:Z

    .line 1265
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_LAYER:Lcom/metamoji/nt/NtCommand;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->toInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 1268
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 1269
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1270
    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPrevNoteMode(Z)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v2

    .line 1272
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v3, :cond_9

    .line 1274
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v2, :cond_1

    goto :goto_2

    .line 1281
    :cond_1
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v2, :cond_2

    .line 1282
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToLaserMode(Z)V

    .line 1283
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1286
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtFocusManager;->initFocusViewmode()V

    goto/16 :goto_3

    .line 1289
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v3

    if-eq v3, v0, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    .line 1309
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 1310
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_0

    .line 1305
    :cond_3
    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->ARRANGE:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_1

    .line 1301
    :cond_4
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 1302
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    :goto_0
    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    .line 1297
    :cond_5
    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_1

    .line 1294
    :cond_6
    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    goto :goto_1

    .line 1291
    :cond_7
    sget-object v3, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    .line 1314
    :goto_1
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToEditMode(Z)V

    .line 1315
    iput-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1316
    invoke-direct {p0, v3}, Lcom/metamoji/nt/NtNoteController;->changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    goto :goto_3

    .line 1276
    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode(Z)V

    .line 1277
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1280
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtFocusManager;->initFocusViewmode()V

    goto :goto_3

    .line 1321
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    .line 1322
    invoke-direct {p0, p1, v2}, Lcom/metamoji/nt/NtNoteController;->isViewmodeOperation(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtDocument$EditMode;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1323
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode(Z)V

    .line 1324
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1327
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtFocusManager;->initFocusViewmode()V

    goto :goto_3

    .line 1329
    :cond_a
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToEditMode(Z)V

    .line 1330
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1332
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtFocusManager;->initFocus()V

    .line 1335
    sget-object v2, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtNoteController;->changeToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 1339
    :goto_3
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Collaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_b

    .line 1341
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_distributeNoteOnBeginningOfEdit:Z

    return-void

    .line 1342
    :cond_b
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->UncollaborizeForCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_c

    .line 1343
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1345
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEdit:Z

    return-void

    .line 1347
    :cond_c
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_d

    .line 1349
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1351
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_askCollabolizeOnBeginningOfEdit:Z

    return-void

    .line 1355
    :cond_d
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_f

    .line 1356
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1358
    :cond_e
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliver:Z

    return-void

    .line 1360
    :cond_f
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborizeByDrop:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_11

    .line 1361
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1363
    :cond_10
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForDeliverByDragDrop:Z

    return-void

    .line 1365
    :cond_11
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->SubmitByStudent:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_12

    .line 1367
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SUBMIT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1369
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForSubmitByStudent:Z

    return-void

    .line 1372
    :cond_12
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq p1, v2, :cond_13

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->CopyForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v2, :cond_14

    .line 1374
    :cond_13
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5

    :cond_14
    :goto_4
    return-void

    .line 1376
    :cond_15
    :goto_5
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_noaskCollabolizeOnBeginningOfEditForBlankPaper:Z

    .line 1377
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    return-void
.end method

.method public insertToCurrentPage(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
    .locals 4

    .line 5529
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/nt/NtNoteController;->pastePageFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5533
    :goto_0
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, v0}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 5531
    :try_start_1
    const-string v1, "NtNoteController.insertToCurrentPage"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 5533
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p1, v1}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    .line 5534
    throw v0
.end method

.method public isCollabo()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDetailWindowMode()Z
    .locals 1

    .line 2794
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    return v0
.end method

.method public isDirectable()Z
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDoingUndoRedoCommand()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_doingUndoRedoCommand:Z

    return v0
.end method

.method public isEditLayerEditable()Z
    .locals 1

    .line 2625
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    return v0
.end method

.method public isExistSchoolPageTypeUser()Z
    .locals 5

    .line 11048
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11050
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 11051
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isOfflineEditMode()Z
    .locals 3

    .line 10990
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "isOfflineEditMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10992
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->hasOfflineEditLayerForRootModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isReady:Z

    return v0
.end method

.method isShowedJoinClassNoteAlert()Z
    .locals 1

    .line 11111
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_showJoinClassNoteAlert:Z

    return v0
.end method

.method jumpSettingModeStart()V
    .locals 2

    .line 6654
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->updateCommandStateForJumpSettingMode()V

    .line 6656
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    .line 6662
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    if-nez v0, :cond_0

    .line 6664
    new-instance v0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    .line 6666
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setNumberOfTouchesPanGesture(I)V

    .line 6667
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_saveNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->begin(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    return-void
.end method

.method leaveTextToolMode(ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 5

    .line 3029
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    const/4 v1, 0x1

    .line 3031
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 3034
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/nt/NtNoteController$11;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/NtNoteController$11;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3047
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3048
    const-string v3, "$text"

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3052
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 3053
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, p1

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    .line 3063
    iget-boolean p2, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    if-nez p2, :cond_5

    .line 3065
    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 3066
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v3, v4, :cond_1

    move-object p2, v4

    .line 3073
    :cond_1
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p2, v3, :cond_2

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p2, v3, :cond_3

    :cond_2
    move v1, p1

    :cond_3
    if-eqz p4, :cond_4

    .line 3080
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-nez p1, :cond_4

    .line 3081
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 3086
    :cond_4
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 3087
    const-string p4, "index"

    invoke-virtual {p1, p4, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3088
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object p4, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, p4, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move p1, v1

    :cond_5
    if-nez p1, :cond_7

    if-eqz p3, :cond_7

    if-eqz v2, :cond_7

    .line 3094
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3097
    iget-boolean p2, p0, Lcom/metamoji/nt/NtNoteController;->_delaySelectTextUnit:Z

    if-eqz p2, :cond_6

    .line 3098
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p2

    new-instance p3, Lcom/metamoji/nt/NtNoteController$12;

    invoke-direct {p3, p0, p1, v2}, Lcom/metamoji/nt/NtNoteController$12;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3110
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/nt/NtNoteController$13;

    invoke-direct {p3, p0, p1, v2}, Lcom/metamoji/nt/NtNoteController$13;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    :cond_7
    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 3121
    throw p1
.end method

.method leaveTextToolModeOnFocusChanged()V
    .locals 7

    .line 3156
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    if-nez v0, :cond_1

    .line 3157
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 3158
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    .line 3159
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeWithHidingMazec(Lcom/metamoji/un/text/UnTextUnit;ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V

    :cond_1
    return-void
.end method

.method leaveTextToolModeOnMazecClosing()V
    .locals 2

    const/4 v0, 0x1

    .line 3137
    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->SELECT:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolMode(ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V

    return-void
.end method

.method leaveTextToolModeOnModeChanging(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 3130
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeWithHidingMazec(Lcom/metamoji/un/text/UnTextUnit;ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V

    return-void
.end method

.method leaveTextToolModeOnTransitingToViewMode()V
    .locals 7

    .line 3144
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 3145
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    .line 3146
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeWithHidingMazec(Lcom/metamoji/un/text/UnTextUnit;ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 3147
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3148
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->endTextSelectMode()V

    :cond_1
    return-void
.end method

.method leaveTextToolModeWithHidingMazec(Lcom/metamoji/un/text/UnTextUnit;ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 3

    .line 3008
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    const/4 v1, 0x1

    .line 3010
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    if-eqz p1, :cond_0

    .line 3014
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreMazecClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 3016
    :try_start_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3019
    :try_start_2
    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreMazecClosed:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreMazecClosed:Z

    .line 3020
    throw p1

    .line 3022
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolMode(ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3024
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreTextUnitFocus:Z

    .line 3025
    throw p1
.end method

.method makeCopyingData(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6053
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 6054
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6055
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x0

    .line 6058
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    .line 6060
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6061
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->makePasteboardExtras()Ljava/util/Map;

    move-result-object v2

    .line 6064
    invoke-static {}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->trueSelector()Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;

    move-result-object v3

    .line 6065
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->extraKeyConverterAppendSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;

    move-result-object v1

    .line 6063
    invoke-static {v2, v3, v1}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->convertKey(Ljava/util/Map;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;)Ljava/util/Map;

    move-result-object v1

    .line 6066
    invoke-interface {p3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public makeGroup(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 10280
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 10281
    monitor-enter v0

    .line 10282
    :try_start_0
    const-string v1, "group-name"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10283
    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->existGroupName(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 10285
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PLEASE_RETRY:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    .line 10287
    :cond_0
    monitor-exit v0

    return-void

    .line 10289
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10291
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10293
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V

    .line 10294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method makeNotifyBoothIdDic(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 10588
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertionCount()I

    move-result v0

    .line 10589
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 10590
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 10592
    invoke-virtual {p2, v3}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->pageModelsAtIndex(I)Ljava/util/List;

    move-result-object v4

    .line 10593
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/df/model/IModel;

    .line 10594
    invoke-virtual {p0, p1, v5, v1}, Lcom/metamoji/nt/NtNoteController;->boothIdArrayOnPage(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 10595
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide/16 v7, -0x1

    .line 10596
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public makePasteboardExtras(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/IModelManager;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5729
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v0

    .line 5730
    invoke-static {}, Lcom/metamoji/ctold/CtFactory;->instance()Lcom/metamoji/ctold/CtFactory;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ctold/CtFactory;->createDocTagManager(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    .line 5731
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v1, p1, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 5733
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5734
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createPasteboardExtrasMakeManager()Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;

    move-result-object v2

    .line 5735
    new-instance v3, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;

    invoke-direct {v3, p3, v0, v1}, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ctold/CtDocTagManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    .line 5736
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/df/model/IModel;

    .line 5737
    const-string v0, "pageId"

    invoke-interface {p3, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5738
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/nt/NtNoteController$NtBogusTaggableObject;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5739
    new-array v1, v1, [Lcom/metamoji/ctold/CtTaggableObject;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;

    move-result-object v0

    .line 5742
    invoke-static {}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->trueSelector()Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;

    move-result-object v1

    .line 5743
    invoke-static {p3}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->extraKeyConverterAppendSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;

    move-result-object p3

    .line 5741
    invoke-static {v0, v1, p3}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->convertKey(Ljava/util/Map;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;)Ljava/util/Map;

    move-result-object p3

    .line 5744
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method makePasteboardExtras(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation

    .line 5770
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    .line 5771
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 5773
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->makePasteboardExtras(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;Ljava/util/List;)V

    return-void
.end method

.method public makeThumbnail(Ljava/lang/String;FFFFF)Lcom/metamoji/cm/Blob;
    .locals 7

    .line 8564
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 8566
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 8567
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getStageBackgroundColor()I

    move-result p1

    .line 8570
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Lcom/metamoji/cm/SizeF;

    invoke-direct {v4, p4, p5}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    new-instance v5, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v5, p1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v6

    move v2, p6

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8575
    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object p2

    .line 8576
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public mazecDidClosed()V
    .locals 1

    .line 3255
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_ignoreMazecClosed:Z

    if-nez v0, :cond_0

    .line 3256
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->leaveTextToolModeOnMazecClosing()V

    :cond_0
    return-void
.end method

.method moveUserIds(Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 10250
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    .line 10251
    monitor-enter v0

    .line 10253
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/metamoji/nt/NtNoteController;->getGroupDic(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10255
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 10259
    const-string/jumbo p3, "user-list"

    invoke-static {v1, p3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_2

    .line 10260
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    if-eqz p4, :cond_1

    .line 10262
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PLEASE_RETRY:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    .line 10264
    :cond_1
    monitor-exit v0

    return-void

    .line 10268
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10270
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/NtNoteController;->removeUsers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 10271
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_3

    .line 10272
    monitor-exit v0

    return-void

    .line 10275
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/nt/NtNoteController;->appendUsers(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 10276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDialogClosed(ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    .line 8492
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/df/sprite/Viewport;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Done tag = "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 8494
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/df/sprite/Viewport;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Cancel tag = "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onOrientationChange(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7885
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onOrientationChange(Lcom/metamoji/cm/CmContext;)V

    .line 7887
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onOrientationChangeEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 3

    .line 9413
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9415
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 9416
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 9419
    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->getKind()Lcom/metamoji/df/controller/PageEventContext$Kind;

    move-result-object v0

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->CurrentPageChanged:Lcom/metamoji/df/controller/PageEventContext$Kind;

    if-ne v0, v1, :cond_1

    .line 9420
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-eqz v0, :cond_1

    .line 9421
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePagesStatusDidChange()V

    .line 9426
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$65;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$65;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 9434
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method

.method public onStateDataSaved()V
    .locals 2

    .line 8689
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 8690
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->purgeModel(Lcom/metamoji/df/model/IModel;)V

    const/4 v0, 0x0

    .line 8691
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    :cond_0
    return-void
.end method

.method public onStateDataSaving()V
    .locals 3

    .line 8668
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtLinkJumpManager;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8669
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "linkjumps"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_0

    .line 8672
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    .line 8673
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 8675
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_tempLinkJumpsModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 8676
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_linkJumpManager:Lcom/metamoji/nt/NtLinkJumpManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified(Z)V

    :cond_1
    return-void
.end method

.method onUserDrawingEnd()V
    .locals 0

    return-void
.end method

.method onUserDrawingStart()V
    .locals 0

    return-void
.end method

.method onViewModeDoubleTap(Landroid/graphics/PointF;)V
    .locals 7

    .line 9560
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9563
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 9565
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9568
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 9569
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    .line 9570
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    .line 9571
    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->GetJumpItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 9572
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :goto_0
    return-void

    .line 9576
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v0

    .line 9577
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v3

    .line 9578
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v3

    .line 9579
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 9580
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v3

    add-float/2addr v0, p1

    .line 9582
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9587
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/NtJumpLocation;

    .line 9588
    invoke-direct {p0, v5}, Lcom/metamoji/nt/NtNoteController;->IsSameJump(Lcom/metamoji/nt/NtJumpLocation;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 9594
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_6

    move v4, v3

    :cond_6
    move v0, v4

    .line 9599
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/NtJumpLocation;

    .line 9600
    invoke-direct {p0, v5, p1}, Lcom/metamoji/nt/NtNoteController;->IsContainFrame(Lcom/metamoji/nt/NtJumpLocation;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 9604
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Lcom/metamoji/nt/NtJumpLocation;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z

    .line 9605
    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtJumpList;->EnableJumpBackButton()V

    return-void

    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 9610
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_9

    move v0, v3

    :cond_9
    if-ne v0, v4, :cond_7

    .line 9618
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->goJumpHis()V

    return-void
.end method

.method onViewModeLongPress(Landroid/graphics/PointF;)V
    .locals 13

    .line 9501
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 9505
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 9506
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 9507
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 9508
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->GetJumpItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9509
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 9515
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->GetJumpLocationView()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 9517
    :cond_2
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 9519
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object p1

    .line 9520
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    .line 9521
    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 9522
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v2

    .line 9523
    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v2

    .line 9524
    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v2

    const/4 v5, 0x0

    move v6, v5

    .line 9525
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 9526
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/nt/NtJumpLocation;

    .line 9528
    invoke-virtual {v7, v2, v3}, Lcom/metamoji/nt/NtJumpLocation;->calcTargetRect(FLcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;

    move-result-object v7

    neg-float v8, v4

    neg-float v9, p1

    .line 9529
    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 9530
    new-instance v8, Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x99

    const/16 v10, 0xbf

    const/16 v11, 0x28

    const/16 v12, 0xd

    .line 9531
    invoke-static {v11, v12, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9533
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9534
    iget v10, v7, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 9535
    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9537
    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9539
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9540
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtNoteController$66;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtNoteController$66;-><init>(Lcom/metamoji/nt/NtNoteController;Landroid/widget/RelativeLayout;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9546
    new-instance p1, Lcom/metamoji/nt/NtNoteController$67;

    invoke-direct {p1, p0, v1}, Lcom/metamoji/nt/NtNoteController$67;-><init>(Lcom/metamoji/nt/NtNoteController;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method onViewModeTap(Landroid/graphics/PointF;)V
    .locals 5

    .line 8176
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8180
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 8184
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 8185
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 8186
    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 8187
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 8189
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8190
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 8191
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/metamoji/noteanytime/R$id;->editing_area:I

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 8192
    invoke-static {v1, p1, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v1, 0x1

    .line 8198
    invoke-direct {p0, v1, v0, p1}, Lcom/metamoji/nt/NtNoteController;->onViewModeTapInnerForSchool(ZLandroid/graphics/PointF;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 8207
    invoke-direct {p0, v1, v0, p1}, Lcom/metamoji/nt/NtNoteController;->onViewModeTapInnerForSchool(ZLandroid/graphics/PointF;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onViewportScrollChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7777
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportScrollChanged(Lcom/metamoji/cm/CmContext;)V

    .line 7779
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7759
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V

    .line 7761
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 7762
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingEnd()V

    return-void
.end method

.method public onViewportScrollStart(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7733
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingStart()V

    .line 7734
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollStartEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 7735
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportScrollStart(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public onViewportSizeChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7866
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportSizeChanged(Lcom/metamoji/cm/CmContext;)V

    .line 7868
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewportZoomChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7849
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportZoomChanged(Lcom/metamoji/cm/CmContext;)V

    .line 7851
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewportZoomChanging()V
    .locals 2

    .line 7816
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7831
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V

    .line 7833
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 7834
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingEnd()V

    return-void
.end method

.method public onViewportZoomStart(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 7801
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingStart()V

    .line 7802
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomStartEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 7803
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onViewportZoomStart(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public pageFromPageId(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4127
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4129
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 4131
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public pageIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4144
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    .line 4145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4147
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4151
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public pageIndexFromPageId(Ljava/lang/String;)I
    .locals 4

    .line 4104
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4106
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4110
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4111
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result p1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 7901
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V

    .line 7903
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public pastePageFromModelManager(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;
    .locals 7

    .line 5757
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 5758
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/NtNoteController;->pastePageInnrFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method pastePageInnrFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZZ)Ljava/lang/String;
    .locals 11

    .line 5659
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibility()Lcom/metamoji/df/controller/ModelCompatibility;

    move-result-object v0

    .line 5660
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibilityTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 5661
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/controller/ModelCompatibility;->checkCompatibility(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v2

    .line 5662
    iget-object v2, v2, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    .line 5663
    sget-object v3, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v2, v3, :cond_1

    .line 5666
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/controller/ModelCompatibility;->convert(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v0

    .line 5667
    iget-object v0, v0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5669
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP0074"

    const-string p3, "converting version was failed."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 5671
    :cond_1
    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v2, v0, :cond_3

    :goto_0
    const/4 v1, 0x0

    .line 5689
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5690
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 5691
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    .line 5693
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5694
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    goto :goto_1

    .line 5696
    :cond_2
    invoke-virtual {p0, v2, v0, p1}, Lcom/metamoji/nt/NtNoteController;->makePasteboardExtras(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/IModelManager;)Ljava/util/Map;

    move-result-object v2

    .line 5697
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtNoteController$46;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/NtNoteController$46;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-static {v0, v3, v4, v2}, Lcom/metamoji/nt/NtPasteDataUtil;->exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5707
    :try_start_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5710
    :try_start_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtNoteController$47;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/NtNoteController$47;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-static {v2, v3, v4, v10}, Lcom/metamoji/nt/NtPasteDataUtil;->importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5720
    :try_start_4
    invoke-virtual {p0, v10, p1, v0}, Lcom/metamoji/nt/NtNoteController;->makePasteboardExtras(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;Ljava/util/List;)V

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p2

    move v9, p3

    move v7, p4

    move/from16 v8, p5

    .line 5721
    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/nt/NtNoteController;->addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5723
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5717
    :try_start_5
    const-string p2, "failed to retrieve page data in pasteboard."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5718
    sget p1, Lcom/metamoji/noteanytime/R$string;->MsgTitle_ImportToCurrentNote_Failed:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5723
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 5724
    throw p1

    .line 5673
    :cond_3
    :try_start_6
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP0075"

    const-string p3, "MMJDfModelCompatibility checkCompatibility:traverser: returns CANTREAD."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 5676
    :catch_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtNoteController$45;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtNoteController$45;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 5682
    sget p1, Lcom/metamoji/noteanytime/R$string;->MsgTitle_ImportToCurrentNote_Failed:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method performAddPagesUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 5799
    const-string v0, "p"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 5800
    const-string v2, "i"

    invoke-interface {p2, v2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 5801
    const-string v3, "a"

    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 5803
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v3

    .line 5806
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    const/4 v4, 0x1

    if-eqz p1, :cond_7

    .line 5810
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5811
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5812
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5813
    const-class v7, Lcom/metamoji/df/model/IModel;

    invoke-static {v6, v7}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/df/model/IModel;

    .line 5814
    invoke-virtual {p0, v6}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v6

    const-class v7, Lcom/metamoji/nt/NtPageController;

    invoke-static {v6, v7}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/NtPageController;

    if-eqz v6, :cond_0

    .line 5816
    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5822
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5823
    check-cast v6, Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v6}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/NtPageController;

    if-eqz v6, :cond_3

    .line 5825
    invoke-virtual {v6}, Lcom/metamoji/nt/NtPageController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 5827
    invoke-interface {v7, v6}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_1

    :cond_4
    if-eq v3, v0, :cond_5

    .line 5834
    invoke-super {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->setCurrentPageIndex(I)V

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v1

    .line 5839
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 5840
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_6

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v1

    .line 5842
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5845
    :cond_6
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->removePages(Ljava/util/List;)V

    .line 5854
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 5855
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;

    move-result-object p2

    .line 5856
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->setRemovePageIDs(Ljava/util/List;)V

    .line 5857
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->sendRemovePagesDirection(Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;)V

    goto :goto_5

    .line 5863
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 5865
    check-cast v1, Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->insertPageAt(ILcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 5870
    :cond_8
    invoke-super {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->setCurrentPageIndex(I)V

    .line 5882
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 5883
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;

    move-result-object p1

    .line 5884
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertPageModels(Ljava/util/List;Ljava/lang/String;)V

    .line 5885
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->sendInsertPagesDirection(Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)V

    :cond_9
    move v0, v4

    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    .line 5893
    invoke-direct {p0, v4, v4}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZ)V

    :cond_b
    return-void
.end method

.method public performApplyTemplateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 7660
    const-string v0, "ofc"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "nfc"

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 7661
    :cond_0
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    .line 7663
    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 7664
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 7665
    const-string v2, "MMJNtDocumentSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7666
    instance-of v2, v1, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v2, :cond_3

    .line 7667
    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setFrontCover(Z)V

    .line 7672
    :cond_3
    const-string v0, "a"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 7674
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performAddPagesUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    .line 7677
    :cond_4
    const-string v1, "pd"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7679
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7680
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 7681
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7682
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 7683
    invoke-virtual {v2, p1, v3}, Lcom/metamoji/nt/NtPageController;->performPageApplyTemplateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 7687
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performAddPagesUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    :cond_6
    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 4

    .line 4299
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 4455
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleChangeNoteSettingsVerticalWriting(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4452
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleInsertDocument(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4449
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleInternalAddPage(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4446
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleInternalAddTextUnit(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4443
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSearchTextPrev(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4440
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSearchTextNext(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4437
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleHideSearchTextBar(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4434
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleShowSearchTextBar(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4431
    :pswitch_8
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->handleTextShowHideMazec()V

    goto/16 :goto_0

    .line 4428
    :pswitch_9
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleTextPenSet()V

    goto/16 :goto_0

    .line 4425
    :pswitch_a
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleTextUnitPenEdit()V

    goto/16 :goto_0

    .line 4419
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleEraserTool(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4416
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePenTool(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4413
    :pswitch_d
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleSelectTool()V

    goto/16 :goto_0

    .line 4410
    :pswitch_e
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleEndEditMode()V

    goto/16 :goto_0

    .line 4406
    :pswitch_f
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleCloseMenu()V

    goto/16 :goto_0

    .line 4397
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleChangeLaserPointerColor(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4394
    :pswitch_11
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleShowPenAttr(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4391
    :pswitch_12
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSetSelectType(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4388
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSetEraser(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4385
    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSetPen2(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4382
    :pswitch_15
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSetPen(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4379
    :pswitch_16
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->handleExitJumpSettingMode()V

    goto/16 :goto_0

    .line 4376
    :pswitch_17
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleSetNoteMode(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4373
    :pswitch_18
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleMovePage(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4366
    :pswitch_19
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4367
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleDeletePageOnCollabo(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 4369
    :cond_0
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleDeletePage(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4363
    :pswitch_1a
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePastePage(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4360
    :pswitch_1b
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleCutPage(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4357
    :pswitch_1c
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleCopyPage(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4354
    :pswitch_1d
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleNewPage(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    :pswitch_1e
    const/4 v0, 0x0

    .line 4350
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->handleLinkJumpBack(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4345
    :pswitch_1f
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4346
    const-string v2, "index"

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4347
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtNoteController;->handleSetNoteMode(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4342
    :pswitch_20
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleLinkJumpMove(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4339
    :pswitch_21
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleLinkJumpDelete(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4331
    :pswitch_22
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handleLinkJumpJump(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4328
    :pswitch_23
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleLinkJumpForward()V

    goto :goto_0

    .line 4325
    :pswitch_24
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->handleLinkJumpBackward()V

    goto :goto_0

    .line 4322
    :pswitch_25
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePageJump(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4319
    :pswitch_26
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePageJumpSpecified(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4316
    :pswitch_27
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePageJumpTail(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4313
    :pswitch_28
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePageJumpHead(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4310
    :pswitch_29
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePageForward(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4307
    :pswitch_2a
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtNoteController;->handlePageBackward(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 4304
    :pswitch_2b
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->handleRedo()V

    goto :goto_0

    .line 4301
    :pswitch_2c
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->handleUndo()V

    :goto_0
    :pswitch_2d
    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    .line 4464
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 4468
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4470
    invoke-virtual {v2, p1, p2}, Lcom/metamoji/nt/NtPageController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_2d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method performRemovePagesUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 13

    .line 6227
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 6232
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    .line 6234
    const-string v1, "i"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    .line 6239
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6241
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;

    move-result-object v5

    .line 6242
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v5, v2

    move-object v6, v5

    .line 6247
    :goto_0
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6249
    const-string v7, "r"

    invoke-interface {p2, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v8, -0x1

    move v9, v4

    .line 6250
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 6251
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 6252
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/df/model/IModel;

    .line 6253
    invoke-virtual {p0, v10, v11}, Lcom/metamoji/nt/NtNoteController;->insertPageAt(ILcom/metamoji/df/model/IModel;)V

    .line 6255
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/2addr v8, v3

    if-eq v10, v8, :cond_2

    if-eqz p1, :cond_1

    .line 6257
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 6258
    invoke-virtual {v5, v6, v2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertPageModels(Ljava/util/List;Ljava/lang/String;)V

    .line 6259
    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_1
    add-int/lit8 v2, v10, -0x1

    .line 6261
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz p1, :cond_3

    .line 6264
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 6271
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 6272
    invoke-virtual {v5, v6, v2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertPageModels(Ljava/util/List;Ljava/lang/String;)V

    .line 6273
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 6278
    :cond_5
    const-string p1, "p"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 6279
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 6280
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfPageController;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getPageIndex(Lcom/metamoji/df/controller/DfPageController;)I

    move-result p1

    .line 6281
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    move v4, v3

    .line 6291
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 6293
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->sendInsertPagesDirection(Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)V

    goto/16 :goto_4

    .line 6299
    :cond_7
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 6302
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6303
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6305
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 6307
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6313
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6314
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 6316
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 6318
    invoke-interface {v6, v5}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_3

    .line 6324
    :cond_b
    const-string v1, "n"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 6325
    invoke-interface {v0, p2}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6326
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/controller/DfPageController;

    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->getPageIndex(Lcom/metamoji/df/controller/DfPageController;)I

    move-result p2

    .line 6327
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    move v4, v3

    .line 6332
    :cond_c
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->removePages(Ljava/util/List;)V

    .line 6342
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 6343
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;

    move-result-object p1

    .line 6344
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->setRemovePageIDs(Ljava/util/List;)V

    .line 6345
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->sendRemovePagesDirection(Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;)V

    :cond_d
    :goto_4
    if-eqz v4, :cond_e

    .line 6352
    invoke-direct {p0, v3, v3}, Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZ)V

    :cond_e
    return-void
.end method

.method public performSchoolPageTypeUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 9948
    const-string v0, "fpil"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9949
    const-string/jumbo v1, "tspt"

    const/4 v2, -0x1

    invoke-interface {p2, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz v0, :cond_4

    .line 9950
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    if-ne p2, v2, :cond_0

    goto :goto_2

    .line 9955
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9956
    check-cast v1, Ljava/util/Map;

    .line 9957
    const-string v2, "pageId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 9960
    const-string/jumbo v3, "schoolPageType"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_0

    .line 9964
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, p2

    .line 9969
    :goto_1
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v2

    .line 9970
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9972
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtPageController;->setSchoolPageType(I)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 762
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 763
    const-string v1, "pageundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performPageUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 765
    :cond_0
    const-string v1, "addpagesundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performAddPagesUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 767
    :cond_1
    const-string v1, "removepagesundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performRemovePagesUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 769
    :cond_2
    const-string v1, "movepageundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performMovePageUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 771
    :cond_3
    const-string v1, "applytemplateundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 772
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performApplyTemplateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 773
    :cond_4
    const-string/jumbo v1, "schoolpagetypeundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performSchoolPageTypeUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 776
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown undo/redo ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public personalModeType()I
    .locals 3

    .line 10694
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolPersonalModeType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 1407
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    .line 1413
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    .line 1415
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->attachmentsManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->unmakeDirectable()V

    .line 1416
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->unmakeDirectable()V

    const/4 v0, 0x0

    .line 1417
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    .line 1419
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1420
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollStartEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1421
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1422
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1423
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1424
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomStartEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1425
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1426
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1427
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1428
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1429
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onOrientationChangeEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1430
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1431
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->onWorkareaChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1434
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 1435
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 1436
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 1437
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_interactiveEventManager:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 1439
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->destroy()V

    .line 1442
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 1443
    iget-object v2, v1, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v2}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1444
    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 1446
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_laserLayer:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v1}, Lcom/metamoji/ui/LaserPointerCanvas;->destroy()V

    .line 1448
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->mVideUnitManager:Lcom/metamoji/un/video/UnVideoUnitManager;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoUnitManager;->dispose()V

    .line 1449
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->mVideUnitManager:Lcom/metamoji/un/video/UnVideoUnitManager;

    .line 1451
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected prepareCurrentPage(Z)V
    .locals 3

    .line 3362
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3363
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 3368
    :cond_0
    iput-object v1, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    .line 3371
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 3372
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3375
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$14;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtNoteController$14;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 3394
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->prepareCurrentPage(Z)V

    return-void
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 2

    .line 4487
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 4512
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$28;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$28;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4491
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Viewport;->setPanEnabled(Z)V

    .line 4492
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Viewport;->setPinchEnabled(Z)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 4497
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$27;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$27;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 4529
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-eqz v0, :cond_4

    .line 4530
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 4534
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4536
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/nt/NtPageController;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 5

    .line 4583
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4609
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 4610
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 4611
    iget-boolean v4, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v4, :cond_6

    if-nez v1, :cond_6

    :cond_1
    return v2

    .line 4624
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 4625
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v0

    .line 4630
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4631
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->allowToSaveNoteAndCopyPage()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1

    .line 4592
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_6

    goto :goto_1

    .line 4586
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    if-gtz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_7

    .line 4644
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-eqz v0, :cond_7

    .line 4645
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    :cond_7
    if-nez v2, :cond_8

    .line 4651
    sget-object v0, Lcom/metamoji/nt/NtNoteController$81;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4656
    :pswitch_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hasMultiSelectPages()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 4669
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4671
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPageController;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1

    :cond_9
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 2

    .line 4562
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-eqz v0, :cond_0

    .line 4563
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4566
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4568
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/nt/NtPageController;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public queryWorkareaLayoutOnActivation()Lcom/metamoji/df/controller/DfPageController$WaType;
    .locals 1

    .line 4817
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_requestWaType:Lcom/metamoji/df/controller/DfPageController$WaType;

    return-object v0
.end method

.method readyCanonicalPageList()V
    .locals 5

    .line 8775
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8779
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "canonicalPageList"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 8785
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    .line 8786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 8788
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    .line 8789
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8791
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method reflectCanonicalPageList()Z
    .locals 12

    .line 8801
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "canonicalPageList"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 8811
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 8812
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v4

    const/4 v5, 0x1

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v5

    :goto_0
    if-ge v6, v3, :cond_3

    if-ge v7, v4, :cond_3

    .line 8816
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 8817
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v11

    .line 8818
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 8819
    invoke-virtual {p0, v10}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v11, v10, :cond_1

    add-int/lit8 v7, v7, -0x1

    move v9, v2

    goto :goto_1

    .line 8827
    :cond_1
    invoke-virtual {p0, v10, v7}, Lcom/metamoji/nt/NtNoteController;->movePage(II)V

    move v8, v5

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v5

    goto :goto_0

    :cond_3
    if-ge v6, v3, :cond_5

    :goto_2
    if-ge v6, v3, :cond_4

    .line 8836
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "reflectCanonicalPageList skipped %s [B]"

    invoke-static {v9, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v9, v2

    :cond_5
    if-ge v7, v4, :cond_6

    :goto_3
    if-ge v7, v4, :cond_7

    .line 8843
    invoke-virtual {p0, v7}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "reflectCanonicalPageList skipped %s [C]"

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v2, v9

    .line 8847
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "reflectCanonicalPageList completelyReflected : %b"

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_8

    .line 8849
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_8
    return v8
.end method

.method public removeUndoOrRedoListener(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->remove(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V

    return-void
.end method

.method removeUser(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10132
    check-cast v2, Ljava/util/Map;

    .line 10133
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10135
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 10140
    :cond_1
    const-string/jumbo v3, "user-list"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10141
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 10142
    const-string/jumbo v5, "user-id"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 10143
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10145
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v1, v0

    move-object v0, v4

    :cond_3
    if-eqz v1, :cond_0

    :cond_4
    return-object v0
.end method

.method removeUsers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 10163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10165
    invoke-virtual {p0, v1, p2}, Lcom/metamoji/nt/NtNoteController;->removeUser(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public requestForEditMode()Z
    .locals 1

    .line 1842
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->requestForEditMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestKillFocus()V
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->requestKillFocus()Z

    return-void
.end method

.method public requestKillFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 2

    .line 1525
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 1527
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->changeFocusUnitDuringTextToolMode(Lcom/metamoji/nt/NtFocusOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 1532
    instance-of p1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_3

    .line 1535
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-string v1, "index"

    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_1

    .line 1536
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1537
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_preModeOfText:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1541
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    .line 1544
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFocusManager;->requestKillFocus()Z

    .line 1546
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1547
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_prepareTextMode:Z

    const/4 v0, 0x0

    .line 1550
    invoke-virtual {p0, p1, v0, p1, p1}, Lcom/metamoji/nt/NtNoteController;->enterTextToolModeWithChangingToolMode(ZLcom/metamoji/un/text/UnTextUnit;ZZ)V

    return-void

    .line 1552
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1553
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1554
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 1557
    :cond_3
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFocusManager;->requestKillFocus()Z

    return-void
.end method

.method public requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    return-void
.end method

.method public requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    return-void
.end method

.method public resumeJumpSettingMode()V
    .locals 1

    .line 6694
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    if-eqz v0, :cond_0

    .line 6696
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->contextShowDelay()V

    :cond_0
    return-void
.end method

.method public sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 10113
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10114
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;

    move-result-object v0

    .line 10115
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->setUserIds(Ljava/util/List;)V

    .line 10116
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->setToGroupId(Ljava/lang/String;)V

    .line 10117
    invoke-virtual {v0, p3}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->setNeedsNoGroupMember(Z)V

    .line 10119
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10121
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 10122
    const-string/jumbo p1, "sent ChangeGroupOfUserDirection: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10124
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtChangeGroupOfUserDirectionData;->destroy()V

    :cond_1
    return-void
.end method

.method sendInsertPagesDirection(Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)V
    .locals 8

    .line 8876
    const-string/jumbo v1, "sent InsertPagesDirection %s"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 8882
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->hidePrivateLayers()V

    .line 8885
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8886
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertionCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 8888
    invoke-virtual {p1, v4}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->pageModelsAtIndex(I)Ljava/util/List;

    move-result-object v5

    .line 8889
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8891
    :cond_1
    const-string v3, "ROOM"

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/nt/NtNoteController;->shareAttachmentsOnCollabo(Ljava/util/List;Ljava/lang/String;)V

    .line 8894
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->getDirection()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    const-string v4, "TheNote"

    const-string v7, "ROOM"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8897
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->restoreHiddenPrivateLayers()V

    .line 8898
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8899
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->destroy()V

    return-void

    :catchall_0
    move-exception v0

    .line 8897
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->restoreHiddenPrivateLayers()V

    .line 8898
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8899
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->destroy()V

    .line 8900
    throw v0
.end method

.method public sendLaserPointerDirection(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;)V
    .locals 5

    .line 8938
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8942
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 8951
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "TheNoteLaserP"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZ)V

    .line 8953
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->destroy()V

    return-void
.end method

.method public sendMakeGroupDirection(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10099
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10100
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;

    move-result-object v0

    .line 10101
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;->setGroupDic(Ljava/util/Map;)V

    .line 10102
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10104
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 10105
    const-string/jumbo p1, "sent MakeGroupDirection: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10107
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtMakeGroupDirectionData;->destroy()V

    :cond_1
    return-void
.end method

.method sendMovePagesDirection(Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;)V
    .locals 6

    .line 8922
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8927
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "ROOM"

    const-string v2, "TheNote"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 8929
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->destroy()V

    return-void
.end method

.method sendRemovePagesDirection(Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;)V
    .locals 6

    .line 8908
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8913
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "ROOM"

    const-string v2, "TheNote"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 8915
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->destroy()V

    return-void
.end method

.method public setAllowEveryoneAnswer(ZZ)V
    .locals 7

    .line 10750
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolAllowEveryoneAnswer"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 10751
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 10754
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 10755
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 10758
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10760
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;

    move-result-object p2

    .line 10761
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->setAllowEveryoneAnswer(Z)V

    .line 10762
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 10763
    const-string/jumbo v0, "sent NtAllowEveryoneAnswerDirectionData: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10764
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtAllowEveryoneAnswerDirectionData;->destroy()V

    .line 10768
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtNoteController$74;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController$74;-><init>(Lcom/metamoji/nt/NtNoteController;Z)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setChatData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2819
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "chatdata"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v2, "map"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 2822
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 2824
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setCollaboModeNumber(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V
    .locals 1

    .line 3982
    const-string v0, "collaboMode"

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->ordinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->setEditValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 2

    .line 4897
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public setCurrentPageIndex(ILcom/metamoji/cm/ICmEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4887
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/metamoji/df/controller/DfPageController$WaType;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4833
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-ltz p1, :cond_2

    .line 4830
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 4839
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 4840
    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v2

    const-string v3, "RestoringPage"

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->isIdleOrCancellable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_3

    .line 4842
    invoke-interface {p4, v0}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    return-void

    .line 4848
    :cond_1
    new-instance v4, Lcom/metamoji/nt/NtNoteController$32;

    move-object v5, p0

    move v7, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/nt/NtNoteController$32;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/DfPageController$WaType;ILcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/cm/CmTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    move-object v9, p4

    .line 4831
    const-string p1, "CurrentPageIndex set: invalid page number"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    if-eqz v9, :cond_3

    .line 4833
    invoke-interface {v9, v0}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public setDelaySelectTextUnit(Z)V
    .locals 0

    .line 11199
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_delaySelectTextUnit:Z

    return-void
.end method

.method public setDetailWindowMode(Z)V
    .locals 2

    .line 2729
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 2736
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2739
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    .line 2740
    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->ERASER:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-eq v0, v1, :cond_2

    .line 2746
    :goto_0
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->PEN:Lcom/metamoji/nt/NtDocument$ToolMode;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->changeToolModeInConsiderationOfTextMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V

    .line 2750
    :cond_2
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->_isDetailWindowMode:Z

    if-eqz p1, :cond_3

    .line 2752
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    .line 2753
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->setNumberOfTouchesPanGesture(I)V

    return-void

    .line 2757
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->setNumberOfTouchesPanGesture(I)V

    .line 2758
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2760
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    .line 2763
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    if-ne v0, v1, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController;->m_isEditLayerEditable:Z

    if-eqz v0, :cond_6

    .line 2782
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public setEditLayerEditable(Z)V
    .locals 2

    .line 2633
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$9;-><init>(Lcom/metamoji/nt/NtNoteController;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setEditMode(Lcom/metamoji/nt/NtDocument$EditMode;)V
    .locals 2

    .line 1934
    const-string v0, "editMode"

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument$EditMode;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->setEditValue(Ljava/lang/String;I)V

    .line 1935
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->getWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V

    return-void
.end method

.method public setEditValue(Ljava/lang/String;I)V
    .locals 2

    .line 3994
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3996
    const-string p1, "can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ltz p2, :cond_1

    .line 4000
    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-void

    .line 4003
    :cond_1
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setEditValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4015
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4017
    const-string p1, "can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4021
    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4024
    :cond_1
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setEditValueWithModel(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 4030
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4032
    const-string p1, "can\'t find freenoteeditstatus"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4036
    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 4038
    :cond_1
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10020
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10022
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V

    return-void

    .line 10025
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10026
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;

    move-result-object v0

    .line 10027
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->setGroupList(Ljava/util/List;)V

    .line 10028
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10030
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 10031
    const-string/jumbo p1, "sent ForSchoolGroupListChangeDirection %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10033
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolGroupListChangeDirectionData;->destroy()V

    :cond_2
    return-void
.end method

.method public setGroupListNotSendDirection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10039
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setGroupListInner(Ljava/util/List;)V

    return-void
.end method

.method public setHiddenStudentName(Z)V
    .locals 7

    .line 10895
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolHiddenStudentName"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 10896
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 10899
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 10900
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10903
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10905
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;

    move-result-object v0

    .line 10906
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;->setHiddenStudentName(Z)V

    .line 10907
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 10908
    const-string/jumbo v1, "sent ForSchoolHiddenStudentNameChangeDirection: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10909
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolHiddenStudentNameChangeDirectionData;->destroy()V

    .line 10913
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$78;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$78;-><init>(Lcom/metamoji/nt/NtNoteController;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsOfflineEditMode(Z)V
    .locals 2

    .line 11001
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "isOfflineEditMode"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 11002
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    if-eqz p1, :cond_0

    .line 11008
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboModeChange(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    goto :goto_0

    .line 11010
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->changeCollaboMode()V

    .line 11013
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$80;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$80;-><init>(Lcom/metamoji/nt/NtNoteController;Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method setJmpHis(Ljava/lang/String;)V
    .locals 5

    .line 9683
    iget v0, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 9685
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    .line 9691
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHis:Ljava/util/List;

    if-le v0, v2, :cond_0

    .line 9687
    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9691
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9693
    :goto_0
    iget p1, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHisCount:I

    return-void

    .line 9701
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHis:Ljava/util/List;

    if-ge v1, v2, :cond_2

    .line 9698
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9699
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->_jumpHis:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    .line 9701
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJumpBackLink(Ljava/lang/String;)V
    .locals 1

    .line 3958
    const-string v0, "jumpBackLink"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->setEditValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setJmpHis(Ljava/lang/String;)V

    return-void
.end method

.method public setNoteModeForSchool(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1977
    const-string v0, "noteModeForSchool"

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->setEditValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setNoteSettingsVerticalWriting(Z)V
    .locals 3

    .line 5578
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 5579
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isNoteTemplate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5583
    new-instance v1, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 5584
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyFromModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 5586
    iget-object v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v2, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 5589
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyToModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    goto :goto_0

    .line 5593
    :cond_0
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 5594
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitVerticalWriting(Z)V

    :goto_0
    const/4 p1, 0x1

    .line 5598
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method public setPersonalModeType(IZ)V
    .locals 7

    .line 10699
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "forSchoolPersonalModeType"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 10700
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 10703
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 10704
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 10707
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10709
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;

    move-result-object p2

    .line 10710
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->setPersonalModeType(I)V

    .line 10711
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 10712
    const-string/jumbo v0, "sent ForSchoolPersonalModeTypeChangeDirection: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10713
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPersonalModeTypeChangeDirectionData;->destroy()V

    .line 10717
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtNoteController$73;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController$73;-><init>(Lcom/metamoji/nt/NtNoteController;I)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSaveOnEnd()V
    .locals 2

    .line 8169
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Lcom/metamoji/df/model/IModelManager;Z)V

    return-void
.end method

.method public setSchoolPageType(I)V
    .locals 8

    .line 9726
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9730
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 9733
    :try_start_0
    const-string/jumbo v0, "schoolpagetypeundo"

    invoke-static {p0, v0}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v2, 0x1

    .line 9734
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 9735
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 9736
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 9737
    const-string v5, "pageId"

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9738
    const-string/jumbo v5, "schoolPageType"

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9739
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9740
    const-string v5, "fpil"

    invoke-interface {v0, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 9741
    const-string/jumbo v4, "tspt"

    invoke-interface {v0, v4, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 9742
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 9745
    invoke-virtual {v3, p1}, Lcom/metamoji/nt/NtPageController;->setSchoolPageType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9747
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 9748
    throw p1

    .line 9753
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9754
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;

    move-result-object v0

    .line 9755
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->setPageId(Ljava/lang/String;)V

    .line 9756
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->setSchoolPageType(I)V

    .line 9757
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9759
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    const-string v7, "ROOM"

    const-string v4, "TheNote"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 9760
    const-string/jumbo p1, "sent ForSchoolPageTypeChangeDirection %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9762
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->destroy()V

    :cond_2
    return-void
.end method

.method public setSchoolPageType(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 9772
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9776
    new-instance v0, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 9778
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9779
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9780
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9783
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9784
    const-string v4, "pageId"

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9785
    const-string/jumbo v4, "schoolPageType"

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9786
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9788
    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtPageController;->setSchoolPageType(I)V

    goto :goto_0

    .line 9793
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 9794
    const-string/jumbo p2, "schoolpagetypeundo"

    invoke-static {p0, p2}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const/4 v2, 0x1

    .line 9795
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 9796
    const-string v3, "fpil"

    invoke-interface {p2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 9797
    const-string/jumbo v0, "tspt"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 9798
    invoke-virtual {v1, p2, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9801
    :cond_2
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 9802
    throw p1

    .line 9807
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9809
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9810
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9812
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9815
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 9816
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;

    move-result-object p2

    .line 9817
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->setPageIds(Ljava/util/List;)V

    .line 9818
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->setSchoolPageType(I)V

    .line 9819
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9821
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "ROOM"

    const-string v3, "TheNote"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 9822
    const-string/jumbo p1, "sent ForSchoolPageTypeChangeDirection %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9824
    :cond_6
    invoke-virtual {p2}, Lcom/metamoji/nt/direction/note/NtForSchoolPageTypeChangeDirectionData;->destroy()V

    :cond_7
    return-void
.end method

.method public setSearchCurrentModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 11173
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentModel:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 11174
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 11177
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentModel:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSearchCurrentPosition(Lcom/metamoji/nt/NtTextSearchPosition;)V
    .locals 0

    .line 11187
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController;->_searchCurrentPosition:Lcom/metamoji/nt/NtTextSearchPosition;

    return-void
.end method

.method public setSetTextLocationViewSettings(Lcom/metamoji/nt/NtSetTextLocation;)V
    .locals 3

    .line 2833
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2834
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 2836
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getPageListViewStatus()I

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_0

    .line 2837
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/metamoji/nt/INtEditor;->setPageListViewStatus(I)V

    .line 2839
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getJumpListViewStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 2840
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/metamoji/nt/INtEditor;->setJumpListViewStatus(I)V

    .line 2844
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->_focusManager:Lcom/metamoji/nt/NtFocusManager;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/nt/NtSetTextLocation;->show(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtFocusManager;)V

    .line 2847
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method public setShowJoinClassNoteAlert(Z)V
    .locals 0

    .line 11115
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNoteController;->m_showJoinClassNoteAlert:Z

    return-void
.end method

.method public setToolMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V
    .locals 1

    .line 1990
    const-string/jumbo v0, "toolMode"

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument$ToolMode;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtNoteController;->setEditValue(Ljava/lang/String;I)V

    return-void
.end method

.method public shareAttachmentsOnCollabo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation

    .line 1591
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/ns/NsCollaboUtils;->currentBoothIdForModels(Lcom/metamoji/nt/NtPageController;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1596
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtNoteController;->shareAttachmentsOnCollabo(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public shareAttachmentsOnCollabo(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1606
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    .line 1607
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v1

    const/4 v2, 0x0

    .line 1608
    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/df/controller/AttachmentsManager;->collectTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p1

    .line 1610
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->attachmentsManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/controller/AttachmentsManager;->sendSharingDirectionOfTickets(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public shareAttachmentsOnCollaboByTickets(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1621
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->currentBoothId(Lcom/metamoji/nt/NtPageController;)Ljava/lang/String;

    move-result-object v0

    .line 1626
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->attachmentsManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/df/controller/AttachmentsManager;->sendSharingDirectionOfTickets(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method showJoinClassNoteAlert(Ljava/lang/String;)V
    .locals 2

    .line 11139
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isShowedJoinClassNoteAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11144
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11149
    :cond_1
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->alreadyJoinedClassNote(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 11154
    :cond_2
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 11155
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->roomId:Ljava/lang/String;

    .line 11156
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->doInBackground()V

    return-void
.end method

.method showPenAttr(IZ)V
    .locals 5

    .line 6766
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6770
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6771
    const-string v1, "PenSettings"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6776
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v2

    const-string v3, "MMJNtPenSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPenSettings;

    .line 6777
    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    .line 6781
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v2

    .line 6782
    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v2

    .line 6791
    new-instance v3, Lcom/metamoji/ui/dialog/PenSettings2;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p2}, Lcom/metamoji/ui/dialog/PenSettings2;-><init>(Lcom/metamoji/nt/share/NtPenStyle;ZZ)V

    .line 6793
    new-instance p2, Lcom/metamoji/nt/NtNoteController$54;

    invoke-direct {p2, p0, v3, p1}, Lcom/metamoji/nt/NtNoteController$54;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ui/dialog/PenSettings2;I)V

    invoke-virtual {v3, p2}, Lcom/metamoji/ui/dialog/PenSettings2;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 6812
    invoke-virtual {v3, v0, v1}, Lcom/metamoji/ui/dialog/PenSettings2;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shutdownViewport()V
    .locals 1

    .line 1394
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->stopThread()V

    :cond_0
    return-void
.end method

.method protected tryUserLogin(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5608
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v0

    .line 5609
    new-instance v1, Lcom/metamoji/nt/NtNoteController$42;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNoteController$42;-><init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void
.end method

.method updateCommandStateForJumpSettingMode()V
    .locals 3

    .line 6681
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6684
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 6685
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_DETAIL_WINDOW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 6686
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_MEMORY_LOCATION:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    :cond_0
    return-void
.end method

.method public updateEditLayerInfo()V
    .locals 10

    .line 10472
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetLayerType:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v1, "***"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    goto/16 :goto_4

    .line 10522
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 10523
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10524
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v0

    .line 10525
    const-string v2, "personalName"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10526
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 10529
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_personal:I

    invoke-direct {p0, v1, v0}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo(Ljava/lang/String;I)V

    return-void

    .line 10532
    :cond_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 10533
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10535
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    sget v1, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_personal:I

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo(Ljava/lang/String;I)V

    :cond_3
    return-void

    .line 10518
    :cond_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getEditLayerPersonalLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_personal:I

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo(Ljava/lang/String;I)V

    return-void

    .line 10484
    :cond_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 10485
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v3

    if-nez v3, :cond_b

    .line 10486
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    .line 10490
    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    const-string v3, "layerName"

    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10491
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    const-string v4, "layerId"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10492
    invoke-static {v3}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10493
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v4

    .line 10494
    invoke-virtual {v4}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 10497
    iget-object v5, v4, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 10498
    iget-object v4, v4, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    .line 10501
    const-string v8, "group-id"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 10502
    invoke-static {v5, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    goto :goto_1

    :cond_7
    move v3, v7

    .line 10503
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v5

    if-ne v5, v2, :cond_8

    goto :goto_2

    :cond_8
    move v6, v7

    .line 10505
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    move-object v1, v0

    .line 10509
    :goto_3
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_personal:I

    invoke-direct {p0, v1, v0}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo(Ljava/lang/String;I)V

    return-void

    .line 10475
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10476
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BASIC_LAYER:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_edit:I

    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo(Ljava/lang/String;I)V

    return-void

    .line 10543
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/metamoji/nt/NtNoteController;->hideEditLayerInfo()V

    return-void
.end method

.method public updatePageStatusForSchool(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 10412
    iput-object v0, p0, Lcom/metamoji/nt/NtNoteController;->m_targetPersonalLayerInfo:Ljava/util/Map;

    .line 10414
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 10415
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10416
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$71;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/nt/NtNoteController$71;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Z)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 10439
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10441
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$72;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/nt/NtNoteController$72;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public workareaChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 7917
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->workareaChanged(Lcom/metamoji/df/controller/DfPageController;)V

    .line 7919
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController;->onWorkareaChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method
