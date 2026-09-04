.class public Lcom/metamoji/nt/NtEditorWindowController;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;,
        Lcom/metamoji/nt/NtEditorWindowController$EditOperation;,
        Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;,
        Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;,
        Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;,
        Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;,
        Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;,
        Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;,
        Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;
    }
.end annotation


# static fields
.field private static _windowController:Lcom/metamoji/nt/NtEditorWindowController;


# instance fields
.field private final MMJNT_USER_DRAWING_RESET_ELAPSE:I

.field public UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private _commandManager:Lcom/metamoji/nt/NtCommandManager;

.field private _document:Lcom/metamoji/nt/NtDocument;

.field private _editorPage:Lcom/metamoji/nt/INtEditor;

.field private _navibarClosedByProgram:Z

.field private _prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field private _retainData:Lcom/metamoji/nt/NtRetainData;

.field mUserDrawingResetTimerFired:Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;

.field m_userClassNumberAndLoginNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_userDrawingCount:I

.field private m_userDrawingFlag:Z

.field private m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;


# direct methods
.method public static synthetic $r8$lambda$Wl4p4ktoLKC06PBphDtc2WgT9gA(Lcom/metamoji/nt/NtEditorWindowController;Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtEditorWindowController;->lambda$handleInsertAudio$6(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tn7sfo7mOPzkk9s9mxUwpjMvnks(Lcom/metamoji/nt/NtEditorWindowController;Z)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->lambda$handleSaveAlbumCore$0(Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_commandManager(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtCommandManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_userDrawingFlag(Lcom/metamoji/nt/NtEditorWindowController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_document(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_prevNoteMode(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_userDrawingFlag(Lcom/metamoji/nt/NtEditorWindowController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddCover(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtEditorWindowController;->addCover(Lcom/metamoji/cm/CmContext;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyFormTemplateFromStatefile(Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->applyFormTemplateFromStatefile(Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateDocument(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/nt/NtEditorWindowController;->createDocument(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowLoadErrorMessage(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtEditorWindowController;->showLoadErrorMessage(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcloseDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdiscardLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 0

    invoke-static {p0}, Lcom/metamoji/nt/NtEditorWindowController;->discardLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v0, 0x0

    .line 5097
    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_retainData:Lcom/metamoji/nt/NtRetainData;

    .line 5153
    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    const/4 v1, 0x0

    .line 5154
    iput v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    .line 5155
    iput-boolean v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    const/16 v1, 0x12c

    .line 5156
    iput v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->MMJNT_USER_DRAWING_RESET_ELAPSE:I

    .line 5159
    new-instance v1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    .line 5160
    new-instance v1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    .line 5205
    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->mUserDrawingResetTimerFired:Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;

    .line 5652
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    .line 203
    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    .line 204
    new-instance v0, Lcom/metamoji/nt/NtCommandManager;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtCommandManager;-><init>(Lcom/metamoji/nt/ICommandProcessor;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    .line 205
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    .line 207
    new-instance p1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {p1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    return-void
.end method

.method public static ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2948
    invoke-static {p0, p1, p2, v0, p3}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 2955
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2956
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_1

    .line 2957
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2959
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2930
    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    .line 2937
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2938
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_1

    .line 2939
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2941
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static _dmCloseDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
    .locals 0

    .line 870
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void
.end method

.method private addCover(Lcom/metamoji/cm/CmContext;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Ljava/io/File;)V
    .locals 2

    .line 4826
    const-string v0, "coverParam"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;

    if-eqz p3, :cond_0

    .line 4829
    invoke-static {p3}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    .line 4830
    invoke-static {p3, p1}, Lcom/metamoji/nt/NtDocumentTemplate;->newPage(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 4833
    invoke-interface {p3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 4834
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 4836
    invoke-direct {p0, p3, p2}, Lcom/metamoji/nt/NtEditorWindowController;->applyFormTemplateFromModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z

    .line 4838
    invoke-interface {p3}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_0
    return-void
.end method

.method private applyFormTemplateFromModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4898
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 4899
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->applyFormTemplate(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z

    move-result p1

    return p1
.end method

.method private applyFormTemplateFromStatefile(Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z
    .locals 0

    .line 4879
    invoke-static {p1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4885
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->applyFormTemplateFromModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4887
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    return p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 4888
    throw p2
.end method

.method public static cancelAllMenus()V
    .locals 1

    .line 2986
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2987
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 2988
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2990
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->cancelAllMenus()V

    :cond_0
    return-void
.end method

.method private static closeDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 4

    .line 771
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eqz p0, :cond_7

    .line 776
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 777
    const-string v2, "forSchoolShapePenMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$6;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtEditorWindowController$6;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 790
    const-string/jumbo v0, "srcInfo"

    .line 791
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 792
    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isSendToSrcAppTarget(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    const-string v2, "discard"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    sget-object p1, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    .line 798
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleCloseDocument()Z

    .line 806
    :cond_2
    invoke-static {}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->handleCloseDocument()V

    .line 809
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    .line 814
    :cond_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 818
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v2

    .line 821
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    goto :goto_0

    .line 822
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 823
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    .line 828
    :cond_5
    :goto_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->onDocumentEditEnd()V

    .line 830
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitStateManager;->onDocumentEditEnd()V

    .line 832
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 834
    invoke-interface {v1, v2}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    .line 840
    :cond_6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtDocument;->destroy(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 842
    const-string p1, "Document destruction error."

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static closeLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 4

    .line 880
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 884
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 885
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 887
    invoke-static {}, Lcom/metamoji/ctold/CtFactory;->instance()Lcom/metamoji/ctold/CtFactory;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/ctold/CtFactory;->createDocTagManager(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v1

    .line 888
    invoke-interface {v1}, Lcom/metamoji/ctold/CtDocTagManager;->close()V

    .line 892
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->isSaveOnEnd(Lcom/metamoji/df/model/IModelManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 894
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 895
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    .line 896
    :goto_2
    invoke-static {p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->_dmCloseDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-void
.end method

.method public static closeLastEditingDocument(Ljava/lang/Runnable;)V
    .locals 3

    .line 905
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isExistRestoreData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 911
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$7;

    invoke-direct {v1}, Lcom/metamoji/nt/NtEditorWindowController$7;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$8;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtEditorWindowController$8;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static closeMenu()Z
    .locals 2

    .line 3000
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3001
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 3002
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3003
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private createDocument(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/nt/doceditor/NtDocumentEditor;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 3880
    invoke-static {p3, p4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isEdittingDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 3882
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3883
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    .line 3884
    new-instance p3, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-object v0

    .line 3886
    :cond_0
    new-instance p5, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {p5}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 3887
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 3888
    invoke-virtual {p5, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 3889
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    .line 3890
    invoke-virtual {v2, p3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p3

    .line 3891
    invoke-virtual {p3, p4, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v1

    .line 3892
    invoke-virtual {p5}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    if-eqz v1, :cond_2

    .line 3893
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 3894
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 3895
    invoke-virtual {p3, p4, p2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3896
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3897
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object p1

    .line 3900
    :cond_1
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-object v0

    .line 3903
    :cond_2
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-object v0

    .line 3908
    :cond_3
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p3

    .line 3909
    invoke-virtual {p3, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 3910
    invoke-virtual {p1, p5, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3911
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3912
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const/4 p2, 0x1

    .line 3913
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setSaveOnEnd(Z)V

    return-object p1

    .line 3916
    :cond_4
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-object v0
.end method

.method public static createInstance(Lcom/metamoji/noteanytime/EditorActivity;)Lcom/metamoji/nt/NtEditorWindowController;
    .locals 1

    .line 217
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtEditorWindowController;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    sput-object v0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    goto :goto_0

    .line 222
    :cond_0
    iput-object p0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    .line 223
    sget-object p0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object p0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 225
    :goto_0
    sget-object p0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0, p0}, Lcom/metamoji/nt/INtEditor;->setOnShowHideSoftInputListener(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;)V

    .line 227
    sget-object p0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    return-object p0
.end method

.method private static discardLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 1

    .line 938
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->_dmCloseDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-void
.end method

.method public static doImportFile(Landroidx/fragment/app/FragmentActivity;Ljava/io/File;)V
    .locals 2

    .line 4816
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/ImportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4817
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4818
    invoke-static {p1, p0}, Lcom/metamoji/cm/CmUtils;->getUriFromFileForImport(Ljava/io/File;Landroidx/fragment/app/FragmentActivity;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4819
    const-string p1, "insertDocument"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4820
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static editorDelegate()Lcom/metamoji/nt/INtEditor;
    .locals 1

    .line 3030
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 3009
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3010
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/metamoji/nt/NtEditorWindowController;
    .locals 1

    .line 248
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    return-object v0
.end method

.method private handleAddTextUnitForLabel(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 2026
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 2027
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 2028
    const-string v2, "index"

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2029
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 2032
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$18;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$18;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleAddUnitFromServer(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4435
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4437
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4439
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    .line 4440
    iget-object p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0, p1, v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->newInstance(ZLjava/lang/String;Z)Lcom/metamoji/media/video/dialog/MfFileListDialog;

    move-result-object p1

    const-string v0, "MfFileListDialog"

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->safeShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleApplySheetTemplate(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 4854
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$39;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$39;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    const/4 p1, 0x0

    const-string v2, "RestoringPage"

    invoke-virtual {v0, v2, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->cancelAndEnsureRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private handleCloseDocument()V
    .locals 1

    .line 2620
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 2621
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDocument()V

    :cond_0
    return-void
.end method

.method private handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V
    .locals 3

    .line 4593
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4594
    invoke-static {p1}, Lcom/metamoji/tle/TextLineExtractorManager;->textLineExtract(Lcom/metamoji/tle/TextLineExtractType;)V

    return-void

    .line 4596
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 4597
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/Context;)V

    .line 4598
    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->attachViewForSoftInput(Landroid/view/View;)V

    .line 4600
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$35;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$35;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/tle/TextLineExtractType;)V

    new-instance p1, Lcom/metamoji/nt/NtEditorWindowController$36;

    invoke-direct {p1, p0, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController$36;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/INtEditor;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;)V

    invoke-static {v1, v2, p1}, Lcom/metamoji/nt/NtMazecImsManager;->temporarilyChangeImeToMazec(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleCopyCurrentNote(Lcom/metamoji/cm/CmContext;)V
    .locals 11

    .line 3943
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3947
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3953
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    .line 3955
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 3964
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getEncryptor()Lcom/metamoji/cm/PBE;

    move-result-object v2

    .line 3967
    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 3968
    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 3972
    :cond_3
    new-instance v5, Lcom/metamoji/nt/NtEditorWindowController$27;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController$27;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;)V

    sget-object v6, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v7, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    new-instance v9, Lcom/metamoji/nt/NtEditorWindowController$28;

    invoke-direct {v9, p0}, Lcom/metamoji/nt/NtEditorWindowController$28;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 v10, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void
.end method

.method private handleCreateDocumentFromDocumentTemplate(Lcom/metamoji/cm/CmContext;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 3834
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 3836
    const-string v0, "noteTemplateDriveId"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3837
    const-string v0, "noteTemplateDocId"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 3838
    const-string v0, "entityId"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 3842
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v5, v0

    .line 3843
    const-string v0, "encryptor"

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/metamoji/cm/PBE;

    .line 3845
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$26;

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/nt/NtEditorWindowController$26;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;)V

    invoke-virtual {p1, v1, v9, v9}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private handleInsertAudio(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4773
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 4775
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 4776
    instance-of v0, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 4778
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Landroidx/fragment/app/FragmentActivity;)V

    const-string p1, "audio/*"

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private handleInsertDocument(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4707
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 4708
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 4709
    instance-of p1, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 4711
    new-instance p1, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda5;-><init>()V

    const-string v0, "*/*"

    invoke-static {v0, p1}, Lcom/metamoji/ui/task/GetFileTask;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private handleInsertPdf(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4743
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 4744
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 4745
    instance-of p1, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 4747
    new-instance p1, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda0;-><init>()V

    const-string v0, "application/pdf"

    invoke-static {v0, p1}, Lcom/metamoji/ui/task/GetFileTask;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private handleLogout()V
    .locals 4

    .line 2601
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2602
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 2606
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    .line 2607
    sget v2, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Logout:I

    new-instance v3, Lcom/metamoji/nt/NtEditorWindowController$20;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$20;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-static {v2, v1, v3, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private handleNewDocTemplateFromCurrent(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 4012
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4018
    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v0}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 4019
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyFromModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 4020
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    .line 4021
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasRecordings(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    .line 4027
    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2;

    sget-object v3, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateCreate:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;)V

    .line 4029
    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setTitleRule(Ljava/lang/String;)V

    .line 4030
    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setHeader(Ljava/lang/String;)V

    .line 4031
    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFooter(Ljava/lang/String;)V

    .line 4032
    iget-boolean v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFrontCover(Z)V

    .line 4033
    iget-boolean v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPrintCover(Z)V

    .line 4034
    iget-boolean v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUseNoteSettingsForText(Z)V

    .line 4035
    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 4036
    iget-object v3, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPasswordHash(Ljava/lang/String;)V

    .line 4037
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setIsVoiceGroupVisible(Z)V

    .line 4039
    new-instance v1, Lcom/metamoji/ui/dialog/NtDialogTask;

    const-string v3, "DocumentSettings2"

    invoke-direct {v1, v3}, Lcom/metamoji/ui/dialog/NtDialogTask;-><init>(Ljava/lang/String;)V

    .line 4040
    new-instance v3, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtNoteTemplateSettings;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private handleNewDocument(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 3772
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 3773
    const-string v0, "MostRecentUsedSheetId"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3774
    const-string v1, "MostRecentUsedNoteTemplateId"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3776
    invoke-static {v1, p1}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    :cond_0
    if-eqz v0, :cond_1

    .line 3780
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->existsSheetTemplate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 3786
    const-string v0, "com.metamoji.noteanytime.sheet.system001.001"

    .line 3790
    :cond_2
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v1

    if-nez p1, :cond_3

    .line 3792
    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateSheetTemplateUseDate(Ljava/lang/String;)V

    .line 3796
    :cond_3
    new-instance v2, Lcom/metamoji/cm/CmContext;

    invoke-direct {v2}, Lcom/metamoji/cm/CmContext;-><init>()V

    if-nez p1, :cond_4

    .line 3798
    const-string p1, "entityId"

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3799
    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3800
    const-string/jumbo v0, "storageFile"

    invoke-virtual {v2, v0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3803
    :cond_4
    const-string v0, "noteTemplateDocId"

    invoke-virtual {v2, v0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3805
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_CREATE_DOCUMENT_FROM_DOCUMENTTEMPLATE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handleNewDocumentSelectDoc(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 3809
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3811
    const-string v1, "NtEditorWindowController#handleNewDocument"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 3815
    :cond_0
    new-instance v2, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;

    invoke-direct {v2}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;-><init>()V

    .line 3816
    sget v3, Lcom/metamoji/noteanytime/R$string;->PaperSelect_Title:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->setTitleId(Ljava/lang/Integer;)V

    .line 3817
    invoke-virtual {v2, p1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 3818
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleOpenDocumentByID(Lcom/metamoji/cm/CmContext;)V
    .locals 7

    .line 3927
    const-string v0, "entityId"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 3928
    const-string v0, "driveId"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3929
    const-string v0, "encryptor"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/metamoji/cm/PBE;

    .line 3930
    const-string v0, "editOperation"

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 3932
    const-string/jumbo v0, "srcInfo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/util/Map;

    .line 3933
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/INtEditor;->editDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/util/Map;)V

    return-void
.end method

.method private handlePaperSelect(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 4643
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4645
    const-string v1, "NtEditorWindowController#handlePaperSelect"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 4649
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 4651
    new-instance v2, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

    invoke-direct {v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;-><init>()V

    .line 4652
    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Prop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->setTitleId(Ljava/lang/Integer;)V

    .line 4653
    invoke-virtual {v2, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 4654
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    .line 4655
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->setDriveId(Ljava/lang/String;)V

    .line 4656
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handlePaperSelectNewPage(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    if-nez p1, :cond_0

    .line 4619
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4621
    :cond_0
    const-string/jumbo v0, "sheetChangeType"

    sget-object v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddPage:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4623
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4625
    const-string v1, "NtEditorWindowController#handlePaperSelect"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    return-void

    .line 4628
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 4630
    new-instance v2, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;

    invoke-direct {v2}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;-><init>()V

    .line 4631
    sget v3, Lcom/metamoji/noteanytime/R$string;->PaperSelect_Title:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->setTitleId(Ljava/lang/Integer;)V

    .line 4632
    invoke-virtual {v2, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 4633
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    .line 4634
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->setDriveId(Ljava/lang/String;)V

    .line 4635
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handlePutInParts(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4363
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 4364
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->addPartsFromLibrary(Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method private handlePutInShape(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 4372
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 4373
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->addShape(Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method private handleReadWebPage(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 4452
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 4453
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->addWebPage()V

    :cond_0
    return-void
.end method

.method private handleSaveAlbumAll(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 2202
    invoke-direct {p0}, Lcom/metamoji/nt/NtEditorWindowController;->saveAllPagesAsImage()V

    return-void
.end method

.method private handleSaveAlbumCore(Z)V
    .locals 3

    .line 2111
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2115
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v1

    .line 2116
    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Z)V

    const-string p1, "image/jpeg"

    invoke-static {v0, v2, v1, p1}, Lcom/metamoji/ui/UiMediaStore$JAVA;->saveSingleBitmapToGallery(Lcom/metamoji/nt/NtDocument;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleSaveAlbumSelection(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    const/4 p1, 0x1

    .line 2123
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->handleSaveAlbumCore(Z)V

    return-void
.end method

.method private handleSaveAlbumThisPage(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    const/4 p1, 0x0

    .line 2139
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->handleSaveAlbumCore(Z)V

    return-void
.end method

.method private handleSelectDocNewPage(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 4665
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 4667
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4668
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4670
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Title_SelectNote:I

    invoke-direct {v0, v1, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;-><init>(ILjava/util/ArrayList;)V

    .line 4671
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setEdittingDocId(Ljava/lang/String;)V

    .line 4672
    new-instance p1, Lcom/metamoji/nt/NtEditorWindowController$37;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$37;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 4683
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "ScSelectNote"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleSelectPhotoLibrary(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 4384
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 4386
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    .line 4387
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/image/direction/UnImageUnitExt;->addImageUnitFromAlbum(Lcom/metamoji/nt/NtDocument;)V

    :cond_0
    return-void
.end method

.method private handleSelectVideo(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 4408
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 4410
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    .line 4411
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->addVideoUnitFromAlbum(Lcom/metamoji/nt/NtDocument;)V

    :cond_0
    return-void
.end method

.method private handleTakeAPicture(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 4397
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 4399
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    .line 4400
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/image/direction/UnImageUnitExt;->addImageFromCamera(Lcom/metamoji/nt/NtDocument;)V

    :cond_0
    return-void
.end method

.method private handleTakeAVideo(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 4419
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 4421
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    .line 4422
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->addVideoUnitFromCamera(Lcom/metamoji/nt/NtDocument;)V

    :cond_0
    return-void
.end method

.method public static hideBottomBars()V
    .locals 1

    .line 2894
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2897
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hideBottomBar()V

    :cond_1
    return-void
.end method

.method public static hideEditorBars()V
    .locals 1

    .line 2878
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2880
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hideEditorBars()V

    :cond_1
    return-void
.end method

.method public static isCurrentPopupVisible()Z
    .locals 2

    .line 2970
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2971
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 2972
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2973
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->isCurrentPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isSendToSrcAppTarget(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 5424
    const-string v0, "package"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5425
    const-string v1, "class"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5426
    const-string/jumbo v2, "sendbackformat"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 5427
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$createDocument$2(Landroid/content/res/Resources;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 3884
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_NOTETEMPLATE_EDITTING:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleInsertAudio$6(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    if-eqz p3, :cond_0

    .line 4780
    invoke-static {p2, p3}, Lcom/metamoji/ui/ImportActivity;->CreateIntent(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    .line 4781
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4783
    new-instance p2, Lcom/metamoji/cm/CmContext;

    invoke-direct {p2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4784
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "importFilePath"

    invoke-virtual {p2, p3, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4785
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_ADD_FROM_FILE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 4789
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic lambda$handleInsertDocument$4(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_1

    .line 4713
    invoke-static {p0, p1}, Lcom/metamoji/ui/task/GetFileTask;->isMetaMoJiType(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4714
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->StartInsert(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V

    goto :goto_0

    .line 4717
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_ImportInvalidFileType_Message:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    .line 4720
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$handleInsertPdf$5(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 4749
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->StartInsert(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V

    .line 4751
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$handleNewDocTemplateFromCurrent$3(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtNoteTemplateSettings;Ljava/lang/Boolean;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 3

    .line 4041
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 4042
    check-cast p4, Lcom/metamoji/ui/dialog/DocumentSettings2;

    .line 4043
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p3

    .line 4047
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getEncryptor()Lcom/metamoji/cm/PBE;

    move-result-object v0

    .line 4050
    new-instance v1, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 4051
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTitleRule()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    .line 4052
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getHeader()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    .line 4053
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFooter()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    .line 4054
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFrontCover()Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    .line 4055
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getNoFrontCoverOnPrinting()Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    .line 4056
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUseNoteSettingsForText()Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    .line 4057
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 4058
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getPasswordHash()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    .line 4059
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->isIncludeVoiceFile()Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    .line 4060
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getShareTemplateDic()Ljava/util/Map;

    move-result-object p4

    iput-object p4, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    .line 4062
    iget-object p4, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 4063
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getPassword()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4065
    new-instance v0, Lcom/metamoji/cm/PBE;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 4072
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasPasswordHash()Z

    move-result p0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasPasswordHash()Z

    move-result p1

    if-eq p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-direct {p2, v1, v0, p0}, Lcom/metamoji/nt/NtEditorWindowController;->newDocTemplateFromCurrent(Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/cm/PBE;Z)V

    :cond_4
    return-object p3
.end method

.method private synthetic lambda$handleSaveAlbumCore$0(Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 2116
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->getAsBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$systemOption$1(Ljava/lang/Boolean;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 0

    .line 3730
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p1, :cond_0

    .line 3731
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3732
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private newDocTemplateFromCurrent(Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/cm/PBE;Z)V
    .locals 12

    .line 4114
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4119
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v4

    .line 4121
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    :goto_0
    return-void

    .line 4132
    :cond_2
    invoke-static {v3, v4}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 4133
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 4136
    :cond_3
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$29;

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/nt/NtEditorWindowController$29;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;ZLcom/metamoji/cm/PBE;)V

    sget-object v7, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v8, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    new-instance v10, Lcom/metamoji/nt/NtEditorWindowController$30;

    invoke-direct {v10, p0}, Lcom/metamoji/nt/NtEditorWindowController$30;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 v11, 0x1

    const/4 v9, 0x0

    move-object v6, v1

    move-object v5, v2

    invoke-virtual/range {v5 .. v11}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void
.end method

.method private noteTemplateSettings()V
    .locals 4

    .line 3636
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3637
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3641
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3642
    new-instance v1, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 3643
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyFromModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 3645
    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2;

    sget-object v3, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;)V

    .line 3647
    iget-object v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setTitleRule(Ljava/lang/String;)V

    .line 3648
    iget-object v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setHeader(Ljava/lang/String;)V

    .line 3649
    iget-object v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFooter(Ljava/lang/String;)V

    .line 3650
    iget-boolean v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFrontCover(Z)V

    .line 3651
    iget-boolean v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPrintCover(Z)V

    .line 3652
    iget-boolean v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUseNoteSettingsForText(Z)V

    .line 3653
    iget-object v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 3654
    iget-object v3, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setShareTemplateDic(Ljava/util/Map;)V

    .line 3655
    iget-object v1, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPasswordHash(Ljava/lang/String;)V

    .line 3657
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$25;

    invoke-direct {v1, p0, v2, v0}, Lcom/metamoji/nt/NtEditorWindowController$25;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 3701
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DocumentSettings2"

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static openDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;)V
    .locals 2

    .line 4248
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 4255
    :cond_0
    invoke-virtual {p4, p0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->isEdittingDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 4258
    :cond_1
    invoke-virtual {p4}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4261
    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 4262
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 4265
    :cond_2
    invoke-virtual {p4, p0, p1, p3}, Lcom/metamoji/nt/NtEditorWindowController;->editNoteInDriveFromHistory(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static openDocumentFromTab(Lcom/metamoji/nt/NtMRUDocList$Item;ZZ)V
    .locals 6

    if-nez p0, :cond_0

    goto :goto_0

    .line 4195
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4197
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtMRUDocList$Item;->setReadOnly(Z)V

    const/4 p2, 0x0

    .line 4200
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 4201
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    .line 4206
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4208
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    .line 4209
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_3

    .line 4210
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    move-object v4, v3

    :cond_3
    if-eqz p2, :cond_4

    .line 4217
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->isReadOnly()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4218
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->selectReadonlyAndOpenDocument(Lcom/metamoji/nt/NtMRUDocList$Item;Z)V

    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 4224
    invoke-static {v4, v3}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4225
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 4230
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->hasLocalId()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/metamoji/dvm/DvmConstants;->DVM_PRIVATE_DRIVE_ID:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtMRUDocList$Item;->isReadOnly()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/nt/NtEditorWindowController;->editNoteInDriveFromHistory(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private pageCountFromModelManager(Lcom/metamoji/df/model/IModelManager;)I
    .locals 1

    .line 4923
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 4926
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4929
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static popupVisibleChanged()V
    .locals 1

    .line 2979
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2980
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 2981
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->updateButtonStatus()V

    :cond_0
    return-void
.end method

.method public static retainData()Lcom/metamoji/nt/NtRetainData;
    .locals 1

    .line 5130
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getRetainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveAllPagesAsImage()V
    .locals 4

    .line 2155
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2159
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 2164
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const-string v2, "GenerateHDImage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2166
    :goto_1
    invoke-static {v0, v1}, Lcom/metamoji/ui/UiMediaStore$JAVA;->getImagesOfPages(Lcom/metamoji/nt/NtDocument;F)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/UiMediaStore$JAVA;->saveMultiBitmapsToGallery(Lcom/metamoji/nt/NtDocument;Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static selectReadonlyAndOpenDocument(Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
    .locals 6

    .line 4170
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_HistoryTab_OpenNote_Description:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_HistoryTab_OpenNote_Title:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_HistoryTab_OpenNote_ReadOnly:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_HistoryTab_OpenNote_ReadWrite:I

    new-instance v4, Lcom/metamoji/nt/NtEditorWindowController$31;

    invoke-direct {v4, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$31;-><init>(Lcom/metamoji/nt/NtMRUDocList$Item;Z)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cm/CmUtils;->selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static showBottomBars()V
    .locals 1

    .line 2905
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2906
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2908
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->showBottomBar()V

    :cond_1
    return-void
.end method

.method public static showEditorBars()V
    .locals 1

    .line 2884
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2885
    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2886
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->showEditorBars()V

    :cond_1
    return-void
.end method

.method private showLoadErrorMessage(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 287
    instance-of v0, p1, Lcom/metamoji/cm/CmException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/cm/CmException;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result v0

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/nt/NtEditorWindowController$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/Throwable;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 308
    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 313
    :cond_3
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_General_Error:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showSaveImageMessage(Z)V
    .locals 2

    .line 2187
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$19;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$19;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public allowToEditOthersWritings()Z
    .locals 1

    .line 5466
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 5467
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->allowToEditOthersWritings()Z

    move-result v0

    return v0
.end method

.method public changeToPenModeIfViewModeOrLaserMode()Z
    .locals 3

    .line 5452
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 5453
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestForEditMode()Z

    .line 5454
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    .line 5455
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    .line 5456
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5457
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5458
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public changeToSelectModeIfNoteSelectMode()V
    .locals 3

    .line 5438
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 5439
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestForEditMode()Z

    .line 5440
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    .line 5441
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    .line 5442
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5443
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5444
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method public closeCollaboModeBar()V
    .locals 1

    .line 5140
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 5141
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeCollaboModeBar()V

    :cond_0
    return-void
.end method

.method public closeDetailWindowAndEnsurePenMode()V
    .locals 1

    .line 3097
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 3098
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    :cond_0
    return-void
.end method

.method public closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 855
    invoke-static {v0, p1, v1}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 857
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 858
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    const/4 p1, 0x0

    .line 859
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    :cond_0
    return-void
.end method

.method public collaboModeChanged(Z)V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 963
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->collaboModeChanged(Z)V

    .line 966
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 967
    invoke-virtual {p1}, Lcom/metamoji/nt/NtSearchTextBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 968
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 970
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    :cond_0
    return-void
.end method

.method coverSelectAndInsert()V
    .locals 3

    .line 3104
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 3106
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3107
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 3108
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getBackgroundImageParams()Lcom/metamoji/nt/NtPageController$BGImageParams;

    move-result-object v0

    .line 3112
    new-instance v1, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-direct {v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;-><init>()V

    const/4 v2, 0x0

    .line 3113
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    const/4 v2, 0x0

    .line 3114
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setIsSheet(Z)V

    .line 3115
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setBgImageParams(Lcom/metamoji/nt/NtPageController$BGImageParams;)V

    .line 3116
    invoke-virtual {v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->configurePage()V

    .line 3117
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "LibraryBgImageViewDialog"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method coverSelectAndInsertDone(Lcom/metamoji/ui/UiPaperSettingsParam;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 3185
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtEditorWindowController;->handleApplySheetTemplate(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public createRetainData()Lcom/metamoji/nt/NtRetainData;
    .locals 1

    .line 5114
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_retainData:Lcom/metamoji/nt/NtRetainData;

    if-nez v0, :cond_0

    .line 5115
    new-instance v0, Lcom/metamoji/nt/NtRetainData;

    invoke-direct {v0}, Lcom/metamoji/nt/NtRetainData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_retainData:Lcom/metamoji/nt/NtRetainData;

    .line 5117
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_retainData:Lcom/metamoji/nt/NtRetainData;

    return-object v0
.end method

.method createUserClassNumberAndLoginNameCache()V
    .locals 2

    .line 5654
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object v0

    .line 5655
    invoke-interface {v0}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5657
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 5658
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    .line 5660
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserClassNumberAndLoginNameMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public detachView(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 237
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->setOnShowHideSoftInputListener(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;)V

    .line 238
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    :cond_0
    return-void
.end method

.method documentSettings()V
    .locals 5

    .line 3370
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentSettings;-><init>()V

    .line 3372
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 3373
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;

    move-result-object v1

    .line 3374
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_HasFrontCover(Z)V

    .line 3375
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getNoFrontCoverOnPrinting()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_PrintCover(Z)V

    .line 3376
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_ThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V

    .line 3377
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_Thumbnail(Lcom/metamoji/cm/Blob;)V

    .line 3378
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_Header(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_Footer(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3384
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3385
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3386
    invoke-static {v2, v3}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v2

    .line 3388
    new-instance v3, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 3389
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 3390
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontSize()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 3391
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3392
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v4, -0x1000000

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 3393
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitLineHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 3394
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 3395
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 3396
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v1

    iput-object v1, v3, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 3397
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_unitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 3398
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DocumentSettings"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method documentSettings2()V
    .locals 3

    .line 3486
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3487
    new-instance v1, Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;-><init>()V

    .line 3492
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setDocumentTitle(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPasswordHash(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;

    move-result-object v0

    .line 3496
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setHeader(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFooter(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V

    .line 3499
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 3500
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFrontCover(Z)V

    .line 3501
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getNoFrontCoverOnPrinting()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPrintCover(Z)V

    .line 3502
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getUseSystemTextSettings()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUseNoteSettingsForText(Z)V

    .line 3504
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "DocumentSettings2"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method documentSettings2Done(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 6

    .line 3512
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3517
    :cond_0
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 3518
    instance-of v2, v1, Lcom/metamoji/nt/NtDocumentSettings;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 3521
    :cond_1
    check-cast v1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3524
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v2

    .line 3525
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getDocumentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->setDocumentTitle(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v3

    .line 3529
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 3530
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[ %s ] : [ %s ] : [ %s ] \u2192 [ %s ]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19f

    .line 3531
    invoke-static {v3, v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 3534
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getPasswordHash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3535
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 3537
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3542
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtDocument;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3551
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->clearPassword()V

    .line 3557
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTagIds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3559
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTagIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->setDocumentTags(Ljava/util/List;)V

    .line 3563
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setHeader(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFooter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setFooter(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V

    .line 3570
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getThumbnailUsed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 3573
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getThumbnailUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3574
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    .line 3575
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnail(Lcom/metamoji/cm/Blob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3580
    :cond_5
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 3584
    :catch_0
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFrontCover()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setFrontCover(Z)V

    .line 3587
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getNoFrontCoverOnPrinting()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setNoFrontCoverOnPrinting(Z)V

    .line 3590
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUseNoteSettingsForText()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setUseSystemTextSettings(Z)V

    .line 3596
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3599
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3600
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontFamily(Ljava/lang/String;)V

    .line 3602
    :cond_6
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 3603
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontSize(F)V

    .line 3605
    :cond_7
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 3606
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontColor(Ljava/lang/String;)V

    .line 3608
    :cond_8
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 3609
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitLineHeight(F)V

    .line 3611
    :cond_9
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz v0, :cond_a

    .line 3612
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitRuledLineStyle(Ljava/lang/String;)V

    .line 3614
    :cond_a
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 3616
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3617
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBackgroundColorAlpha(F)V

    .line 3618
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v4, 0xff

    invoke-static {v4, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBackgroundColor(Ljava/lang/String;)V

    .line 3620
    :cond_b
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v0, :cond_c

    .line 3621
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {v0}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBorderStyle(Ljava/lang/String;)V

    .line 3623
    :cond_c
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3624
    iget-object p1, p1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitVerticalWriting(Z)V

    .line 3628
    :cond_d
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p1, :cond_e

    .line 3630
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_e
    :goto_2
    return-void
.end method

.method documentSettingsDone(Lcom/metamoji/ui/dialog/DocumentSettings;)V
    .locals 4

    .line 3404
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3408
    :cond_0
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3409
    instance-of v1, v0, Lcom/metamoji/nt/NtDocumentSettings;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 3410
    :cond_1
    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3412
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_FrontCover()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setFrontCover(Z)V

    .line 3413
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_NoFrontCoverOnPrinting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setNoFrontCoverOnPrinting(Z)V

    .line 3414
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_ThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V

    .line 3415
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_ThumbnailUsed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3418
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_ThumbnailUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3419
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    .line 3420
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnail(Lcom/metamoji/cm/Blob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3425
    :cond_2
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 3428
    :catch_0
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_Header()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setHeader(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_Footer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setFooter(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->get_unitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 3440
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 3441
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontSize(F)V

    .line 3444
    :cond_3
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3445
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontColor(Ljava/lang/String;)V

    .line 3448
    :cond_4
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 3449
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitLineHeight(F)V

    .line 3452
    :cond_5
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz v1, :cond_6

    .line 3453
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitRuledLineStyle(Ljava/lang/String;)V

    .line 3456
    :cond_6
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 3458
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3459
    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBackgroundColor(Ljava/lang/String;)V

    .line 3460
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBackgroundColorAlpha(F)V

    .line 3463
    :cond_7
    iget-object v1, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v1, :cond_8

    .line 3464
    iget-object p1, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {p1}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBorderStyle(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public editDocument(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;ILcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;)V
    .locals 10

    .line 359
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 360
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    const/4 v0, 0x0

    .line 361
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setKeepSyncCancel(Z)V

    .line 363
    new-instance v9, Lcom/metamoji/df/controller/ControllerContext;

    invoke-direct {v9}, Lcom/metamoji/df/controller/ControllerContext;-><init>()V

    .line 364
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$2;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v7, p3

    move-object v5, p4

    move v8, p5

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/nt/NtEditorWindowController$2;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/cm/SizeF;ILcom/metamoji/df/controller/ControllerContext;)V

    move-object p1, v1

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$3;

    move-object v4, p2

    move-object v6, p4

    move-object/from16 v5, p7

    move-object v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtEditorWindowController$3;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    invoke-virtual {v0, p1, v9, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public editDocument(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/lang/String;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;)V
    .locals 11

    move-object/from16 v0, p5

    .line 330
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->setDelayJumpPageId(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {p2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 334
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    .line 335
    const-string v4, "$freenote"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "$sharenote"

    if-nez v4, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    :cond_0
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 339
    const-string v6, "pageId"

    invoke-interface {v2, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 340
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    goto :goto_1

    .line 344
    :cond_1
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    :cond_2
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/ns/NsCollaboManager;->setDelayJumpPageId(Ljava/lang/String;)V

    :cond_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move v8, v1

    .line 355
    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/nt/NtEditorWindowController;->editDocument(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;ILcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;)V

    return-void
.end method

.method public editNoteInDriveFromHistory(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13

    .line 4289
    new-instance v0, Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    move-object v3, p2

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/nt/NtMRUDocList$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 4290
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v11, Lcom/metamoji/nt/NtEditorWindowController$32;

    invoke-direct {v11, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$32;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move-object v8, p2

    move/from16 v9, p3

    invoke-static/range {v6 .. v12}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void
.end method

.method public editingOfOthersObjectsIsRestricted()Z
    .locals 1

    .line 5475
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public findUnitById(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;
    .locals 1

    .line 2626
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2631
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->findUnitById(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    return-object p1
.end method

.method public genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 667
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;ZLcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;ZLcom/metamoji/cm/CmContext;)V
    .locals 8

    .line 679
    new-instance v7, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;

    invoke-direct {v7, p5, p6}, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;-><init>(Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    .line 682
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p5

    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$4;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/nt/NtEditorWindowController$4;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;)V

    const/4 p1, 0x0

    invoke-virtual {p5, v0, p1, v7}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 718
    invoke-virtual {v7, p1}, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->onCompleted(Ljava/lang/Throwable;)V

    return-void
.end method

.method public genericEditDocumentInDrive(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V
    .locals 7

    .line 726
    new-instance v6, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;

    invoke-direct {v6, p5, p6}, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;-><init>(Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    .line 729
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p5

    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$5;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/nt/NtEditorWindowController$5;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;)V

    invoke-virtual {p5, v0, v6}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 758
    invoke-virtual {v6, p1}, Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;->onCompleted(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getAsBitmap(Z)Landroid/graphics/Bitmap;
    .locals 4

    .line 2093
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2098
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const-string v2, "GenerateHDImage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_2

    .line 2102
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->exportCurrentSelectionAsBitmap(F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 2104
    :cond_2
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->exportCurrentPageAsBitmap(F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
    .locals 1

    .line 5146
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 5147
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    return-object v0
.end method

.method public getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;
    .locals 1

    .line 5319
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    return-object v0
.end method

.method public getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 3

    .line 4332
    new-instance v0, Lcom/metamoji/cm/mutable/Mutable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/mutable/Mutable;-><init>(Ljava/lang/Object;)V

    .line 4334
    invoke-static {p2}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p2

    .line 4335
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$33;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$33;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/mutable/Mutable;)V

    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$34;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtEditorWindowController$34;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {p2, p1, p3, v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->editDocument(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 4356
    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object p1
.end method

.method public getDriveID()Ljava/lang/String;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorDelegate()Lcom/metamoji/nt/INtEditor;
    .locals 1

    .line 3026
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    return-object v0
.end method

.method public getEditorPage()Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3019
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getHoverPosition(Landroid/graphics/Rect;)Z
    .locals 2

    .line 5028
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5032
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->getHoverPosition(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/nt/itemlist/NtJumpList<",
            "*>;"
        }
    .end annotation

    .line 5416
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object v0

    return-object v0
.end method

.method public getMainSheet()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    .line 2912
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2915
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSelectedPageIndexs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3224
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 3225
    instance-of v1, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_0

    .line 3226
    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMultiSelectedPageIndexs()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3228
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;
    .locals 1

    .line 5339
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5342
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;
    .locals 1

    .line 5346
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5349
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public getPrevNoteMode(Z)Lcom/metamoji/nt/NtNoteController$NoteMode;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eqz p1, :cond_0

    .line 274
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_prevNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    :cond_0
    return-object v0
.end method

.method public getRetainData()Lcom/metamoji/nt/NtRetainData;
    .locals 1

    .line 5126
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_retainData:Lcom/metamoji/nt/NtRetainData;

    return-object v0
.end method

.method public getTargetPages(Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3285
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3286
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 3288
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 3292
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v2

    .line 3293
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 3295
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->ordinal()I

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_2

    .line 3314
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMultiSelectedPageIndexs()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 3311
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    :goto_0
    if-gt v2, v1, :cond_7

    .line 3307
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3302
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_6
    :goto_1
    if-gt v4, v1, :cond_7

    .line 3298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public getUserClassNumberAndLoginNameCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 5664
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleAddVideoUnit(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 4431
    invoke-static {p1, p0}, Lcom/metamoji/un/video/UnVideoUtils;->handleAddVideoUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;)V

    return-void
.end method

.method public handleExportPoisonousMushroom(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 5042
    invoke-static {p1}, Lcom/metamoji/nt/pm/PmCentre;->getGenom(Lcom/metamoji/cm/CmContext;)Ljava/util/HashMap;

    move-result-object p1

    .line 5043
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtEditorWindowControllerExt;->exportPoisonousMushroom(Lcom/metamoji/nt/NtDocument;Ljava/util/HashMap;)V

    return-void
.end method

.method handlePaste(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 3705
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3708
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PASTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/nt/NtDocument;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3709
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTextFromClipboard()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3711
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtNoteController;->createTextUnitFromPlainText(Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method public handlePlayAndShowPlayerBar()V
    .locals 3

    .line 5403
    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5404
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 5406
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->isShowPlayerBar()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5407
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->showPlayerBar(Z)V

    return-void

    .line 5409
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayButtonTouchUp()V

    return-void
.end method

.method handleShareObjectInfoView()V
    .locals 3

    .line 3038
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3040
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3042
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-static {v1, v0, v2}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->showSelectObjectInfo(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtDocument;)V

    :cond_0
    return-void
.end method

.method public handleVoiceNavigation(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 5389
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    .line 5390
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v0

    .line 5391
    const-string v1, "AnchorView"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5392
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->voicePalletShow(Landroid/view/View;)V

    return-void
.end method

.method public hasMultiSelectPages()Z
    .locals 2

    .line 3216
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 3217
    instance-of v1, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_0

    .line 3218
    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hasMultiSelectPages()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideDetailWindow(Z)V
    .locals 0

    .line 4942
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 4943
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    :cond_0
    return-void
.end method

.method public hidePlayerBar()V
    .locals 1

    .line 5367
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    return-void

    .line 5370
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hidePlayerBar()V

    return-void
.end method

.method public hidePlaylist()V
    .locals 1

    .line 5374
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    return-void

    .line 5377
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hidePlaylist()V

    return-void
.end method

.method public hideSoftInput(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2724
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z

    move-result p1

    return p1
.end method

.method public hideSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z
    .locals 3

    .line 2728
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2729
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    const/4 p1, 0x1

    return p1

    .line 2733
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2735
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2737
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public hideWristGuard()V
    .locals 1

    .line 4955
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 4956
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hideWristGuard()V

    :cond_0
    return-void
.end method

.method public hover_hide()V
    .locals 2

    .line 4993
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4996
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_1

    .line 4998
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hover_isShow()Z
    .locals 3

    .line 5003
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5007
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    if-nez v0, :cond_1

    return v1

    .line 5011
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->isShow()Z

    move-result v0

    return v0
.end method

.method public hover_refresh()V
    .locals 1

    .line 4965
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    return-void

    .line 4968
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->updateButtonStatus()V

    return-void
.end method

.method public hover_show()V
    .locals 2

    .line 4979
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4983
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_1

    .line 4985
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isEdittingDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 4271
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4274
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4276
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4277
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4278
    const-string p2, "pageIndex"

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4279
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isMyselfDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1035
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 1042
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p4, :cond_1

    if-nez p3, :cond_1

    .line 1046
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->getShareDocInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1048
    const-string p2, "companyId"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    .line 1049
    const-string/jumbo p2, "roomId"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1053
    const-string p1, "MMJNsShareSettings"

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz p1, :cond_2

    .line 1054
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettings;->getCompanyId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isNotePrepared()Z
    .locals 2

    .line 1022
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1028
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isReady()Z

    move-result v0

    return v0
.end method

.method public isShowPlayerBar()Z
    .locals 1

    .line 5325
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5328
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isShowPlayerBar()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShowPlaylist()Z
    .locals 1

    .line 5332
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5335
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isShowPlaylist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUserDrawing()Z
    .locals 2

    .line 5277
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5278
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5279
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$43;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtEditorWindowController$43;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 5286
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    return v0
.end method

.method public isVisibleSearchTextBar()Z
    .locals 3

    .line 5493
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Z)V

    .line 5494
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$44;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$44;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 5505
    iget-boolean v0, v0, Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;->visible:Z

    return v0
.end method

.method laserPointerStyle()V
    .locals 6

    .line 3754
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3755
    const-string v1, "LaserPointerStyle"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3759
    :cond_0
    new-instance v0, Lcom/metamoji/ui/dialog/LaserPointerStyle;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/LaserPointerStyle;-><init>()V

    .line 3760
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 3761
    const-string v3, "LaserPointerColor"

    sget v4, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 3762
    const-string v4, "LaserPointerThickness"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v2

    .line 3763
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->set_color(I)V

    .line 3764
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->set_thickness(F)V

    .line 3765
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ui/dialog/LaserPointerStyle;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public navibar_isOpen()Z
    .locals 1

    .line 5015
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5019
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isShowEditorBars()Z

    move-result v0

    return v0
.end method

.method public notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 947
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V

    :cond_0
    return-void
.end method

.method public notifyTitleUpdated(Ljava/lang/String;)V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 953
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->notifyTitleUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onHideSoftInput()V
    .locals 1

    .line 2827
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_2

    .line 2828
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2830
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDetailWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2831
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2832
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2833
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_show()V

    .line 2835
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_navibarClosedByProgram:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->navibar_isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2836
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->showEditorBars()V

    .line 2843
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBarVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2844
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->showBottomBar()V

    .line 2853
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    return-void
.end method

.method public onShowSoftInput()V
    .locals 2

    .line 2766
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isRecognitionInText()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2772
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->Exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2773
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2775
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2776
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_hide()V

    :cond_1
    const/4 v0, 0x0

    .line 2778
    iput-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_navibarClosedByProgram:Z

    .line 2779
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->navibar_isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2780
    iput-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_navibarClosedByProgram:Z

    .line 2781
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->hideEditorBars()V

    .line 2786
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->Exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2792
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hideBottomBar()V

    .line 2795
    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getPageListViewStatus()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setPageListViewStatus(I)V

    .line 2796
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getJumpListViewStatus()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setJumpListViewStatus(I)V

    .line 2803
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    return-void
.end method

.method public onTextUnitInputStyleBarVisibilityChanged(Z)V
    .locals 1

    .line 2864
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_1

    .line 2865
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isSoftInputVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2869
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz p1, :cond_0

    .line 2867
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->hideBottomBar()V

    goto :goto_0

    .line 2869
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->showBottomBar()V

    .line 2874
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    return-void
.end method

.method onUserDrawingEnd()V
    .locals 1

    .line 5307
    const-string v0, "onUserDrawingEnd"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 5309
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz v0, :cond_0

    .line 5310
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5313
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->resumeDispatching()V

    :cond_0
    return-void
.end method

.method onUserDrawingStart()V
    .locals 1

    .line 5294
    const-string v0, "onUserDrawingStart"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 5296
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5299
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->pauseDispatching()V

    :cond_0
    return-void
.end method

.method public openCollaboModeBar()V
    .locals 1

    .line 5134
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 5135
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->openCollaboModeBar()V

    :cond_0
    return-void
.end method

.method public openNote(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 10

    .line 5517
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p7, :cond_0

    .line 5524
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object p2

    move-object/from16 v7, p6

    invoke-virtual {p0, p1, p2, v7}, Lcom/metamoji/nt/NtEditorWindowController;->isEdittingDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    move-object/from16 v7, p6

    .line 5542
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$45;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/nt/NtEditorWindowController$45;-><init>(Lcom/metamoji/nt/NtEditorWindowController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 5575
    sget-object p1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 5576
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_StopRecording:I

    new-instance p2, Lcom/metamoji/nt/NtEditorWindowController$46;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController$46;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/Runnable;)V

    const-string/jumbo p3, "yesNoDialogFirst"

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p4, p3}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V

    return-void

    .line 5594
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public openNoteInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 5599
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtEditorWindowController$47;

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/metamoji/nt/NtEditorWindowController$47;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pageCountFromStatefile(Ljava/io/File;)I
    .locals 3

    .line 4906
    invoke-static {p1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4912
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->pageCountFromModelManager(Lcom/metamoji/df/model/IModelManager;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4917
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4914
    :try_start_1
    const-string v2, "pageCountFromStateFile ERROR!"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4917
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    return v0

    :goto_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 4918
    throw v0
.end method

.method paperBackSettings()V
    .locals 3

    .line 3064
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 3078
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3079
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 3080
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getBackgroundImageParams()Lcom/metamoji/nt/NtPageController$BGImageParams;

    move-result-object v0

    .line 3084
    new-instance v1, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-direct {v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;-><init>()V

    const/4 v2, 0x0

    .line 3085
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    const/4 v2, 0x1

    .line 3086
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setIsSheet(Z)V

    .line 3087
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setBgImageParams(Lcom/metamoji/nt/NtPageController$BGImageParams;)V

    .line 3088
    invoke-virtual {v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->configurePage()V

    .line 3089
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "LibraryBgImageViewDialog"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method paperBackSettingsDone(Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 1

    .line 3123
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$22;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$22;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ui/UiPaperSettingsParam;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->selectTargetPages(Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;)V

    return-void
.end method

.method paperSizeSettings()V
    .locals 4

    .line 3052
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeDetailWindowAndEnsurePenMode()V

    .line 3054
    new-instance v0, Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PaperSelect;-><init>()V

    .line 3055
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 3056
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 3057
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/ui/dialog/PaperSelect;->set_paperSize(FF)V

    .line 3058
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ui/dialog/PaperSelect;->set_printSize(FF)V

    .line 3060
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "PaperSelect"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/PaperSelect;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method paperSizeSettingsDone(Lcom/metamoji/ui/dialog/PaperSelect;)V
    .locals 1

    .line 3190
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$23;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$23;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ui/dialog/PaperSelect;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->selectTargetPages(Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;)V

    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MMJNtEditorWindowController : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 1077
    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$48;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v5, "UiPaperSettingsParam"

    const/16 v6, 0x197

    const-string v7, "index"

    const-string v8, "[ %s ] : [ %s ] : %s"

    packed-switch v3, :pswitch_data_0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    move v9, v10

    goto/16 :goto_8

    .line 1888
    :pswitch_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 1892
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 1893
    const-string v5, "ShapeList"

    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    goto/16 :goto_7

    .line 1902
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    .line 1903
    const-string v6, "ShapeLineDash"

    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1904
    const-string v7, "ShapeLineColors"

    invoke-virtual {v3, v7}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1905
    const-string v8, "ShapeLineAlpha"

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8, v11}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v8

    .line 1906
    const-string v12, "ShapeLineWidth"

    invoke-virtual {v3, v12, v11}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v12

    .line 1907
    const-string v13, "ShapeFillType"

    invoke-virtual {v3, v13}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1908
    const-string v14, "ShapeFillColors"

    invoke-virtual {v3, v14}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 1909
    const-string v15, "ShapeFillAlpha"

    invoke-virtual {v3, v15, v11}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v15

    .line 1910
    const-string v11, "ShapeArrowType"

    invoke-virtual {v3, v11}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1911
    const-string v4, "ShapeArrowKinds"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_3

    .line 1912
    const-string v4, "com.metamoji.pen.builtin.standard1"

    goto :goto_1

    :cond_3
    const-string v4, "com.metamoji.pen.builtin.standard2"

    .line 1913
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v10

    const-string v9, "MMJNtSystemPenSettings"

    invoke-virtual {v10, v9}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v9

    check-cast v9, Lcom/metamoji/nt/NtSystemPenSettings;

    .line 1914
    invoke-virtual {v9, v4}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object v4

    .line 1915
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v4

    if-nez v7, :cond_4

    .line 1919
    new-instance v7, Lcom/metamoji/nt/NtEditorWindowController$13;

    invoke-direct {v7, v0}, Lcom/metamoji/nt/NtEditorWindowController$13;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 1928
    :cond_4
    const-string/jumbo v9, "standard"

    if-eqz v7, :cond_5

    .line 1929
    invoke-virtual {v4, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 1930
    invoke-virtual {v4}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 1931
    iput-object v9, v4, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 1932
    iput v8, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 1933
    iput v12, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 1934
    iput-object v6, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    :cond_5
    if-nez v14, :cond_6

    .line 1938
    new-instance v14, Lcom/metamoji/nt/NtEditorWindowController$15;

    invoke-direct {v14, v0}, Lcom/metamoji/nt/NtEditorWindowController$15;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/high16 v15, 0x3f800000    # 1.0f

    :cond_6
    if-eqz v14, :cond_9

    if-nez v13, :cond_8

    .line 1948
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    const-string v9, "gradation"

    :cond_7
    iput-object v9, v4, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    goto :goto_2

    .line 1951
    :cond_8
    iput-object v13, v4, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 1953
    :goto_2
    invoke-virtual {v4, v14}, Lcom/metamoji/nt/share/NtPenStyle;->setFillColors(Ljava/util/List;)V

    .line 1954
    iput v15, v4, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    :cond_9
    const/4 v7, 0x1

    .line 1956
    iput-boolean v7, v4, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-nez v11, :cond_a

    .line 1959
    const-string v11, "none"

    const-string v3, "default"

    :cond_a
    if-eqz v11, :cond_b

    .line 1962
    iput-object v11, v4, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 1963
    iput-object v3, v4, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    .line 1965
    :cond_b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1968
    new-instance v6, Lcom/metamoji/ui/dialog/ShapeList;

    invoke-direct {v6, v4}, Lcom/metamoji/ui/dialog/ShapeList;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    const/4 v4, 0x0

    .line 1969
    invoke-virtual {v6, v4}, Lcom/metamoji/ui/dialog/ShapeList;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 1971
    invoke-virtual {v6, v3}, Lcom/metamoji/ui/dialog/ShapeList;->setArguments(Landroid/os/Bundle;)V

    .line 1972
    new-instance v3, Lcom/metamoji/nt/NtEditorWindowController$17;

    invoke-direct {v3, v0}, Lcom/metamoji/nt/NtEditorWindowController$17;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v6, v3}, Lcom/metamoji/ui/dialog/ShapeList;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1995
    invoke-virtual {v6, v5}, Lcom/metamoji/ui/dialog/ShapeList;->safeShow(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1878
    :pswitch_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->showDebugMenu()V

    goto/16 :goto_7

    .line 1870
    :pswitch_2
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getSingleSelectionTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1871
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->canPerformTextUnitStyle()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1872
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitStyleToSystem()V

    goto/16 :goto_7

    .line 1864
    :pswitch_3
    iget-object v3, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v3}, Lcom/metamoji/nt/NtSupportLog;->handleEndSupportLog(Landroid/app/Activity;)V

    goto/16 :goto_7

    .line 1861
    :pswitch_4
    iget-object v3, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v3}, Lcom/metamoji/nt/NtSupportLog;->handleStartSupportLog(Landroid/app/Activity;)V

    goto/16 :goto_7

    .line 1852
    :pswitch_5
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object v3

    .line 1853
    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v4

    .line 1854
    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    .line 1855
    invoke-static {v4, v3, v10}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1847
    :pswitch_6
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleSubmitByStudent()V

    goto/16 :goto_7

    .line 1828
    :pswitch_7
    new-instance v3, Lcom/metamoji/nt/NtEditorWindowController$12;

    invoke-direct {v3, v0}, Lcom/metamoji/nt/NtEditorWindowController$12;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionEnd(Lcom/metamoji/ns/INsCollaboAction;)V

    goto/16 :goto_7

    .line 1810
    :pswitch_8
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_CHANGE:Lcom/metamoji/nt/NtCommand;

    if-ne v1, v3, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    .line 1811
    :goto_3
    new-instance v4, Lcom/metamoji/nt/NtEditorWindowController$11;

    invoke-direct {v4, v0}, Lcom/metamoji/nt/NtEditorWindowController$11;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static {v10, v3, v5, v4}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionStart(ZZLjava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    goto/16 :goto_7

    .line 1804
    :pswitch_9
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleAddVideoUnit(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1801
    :pswitch_a
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleAddUnitFromServer(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1798
    :pswitch_b
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleTakeAVideo(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1795
    :pswitch_c
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleSelectVideo(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1786
    :pswitch_d
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1788
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v3

    .line 1789
    invoke-virtual {v3}, Lcom/metamoji/ui/flexible/FxManager;->handleMirroredScreenOn()V

    goto/16 :goto_7

    .line 1778
    :pswitch_e
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1780
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v3

    .line 1781
    invoke-virtual {v3}, Lcom/metamoji/ui/flexible/FxManager;->handleMirroredScreenOff()V

    goto/16 :goto_7

    .line 1723
    :pswitch_f
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    .line 1724
    const-string v4, "forSchoolShapePenMode"

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 1725
    invoke-virtual {v3, v4, v6}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 1726
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v3

    .line 1727
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3, v4, v10}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 1729
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v4

    const-string v6, "MMJNtPenSettings"

    invoke-virtual {v4, v6}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtPenSettings;

    if-nez v5, :cond_d

    .line 1733
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getShapePenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v5

    .line 1735
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_e

    .line 1738
    invoke-virtual {v5, v9}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v7

    .line 1739
    invoke-virtual {v4, v7, v9}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1745
    :cond_d
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v5

    .line 1747
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_e

    .line 1750
    invoke-virtual {v5, v9}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v7

    .line 1751
    invoke-virtual {v4, v7, v9}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1755
    :cond_e
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v4

    .line 1756
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    .line 1762
    new-instance v6, Lcom/metamoji/nt/NtToolChangedContext;

    sget-object v7, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-direct {v6, v7, v4}, Lcom/metamoji/nt/NtToolChangedContext;-><init>(Lcom/metamoji/nt/NtToolChangedContext$Kind;I)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 1773
    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_PEN_SETTINGS_CHANGED:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    goto/16 :goto_7

    .line 1715
    :pswitch_10
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1716
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->isPageMode()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1717
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->changeToJumpList()V

    goto/16 :goto_7

    .line 1708
    :pswitch_11
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1709
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->isPageMode()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1710
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->changeToPageList()V

    goto/16 :goto_7

    .line 1705
    :pswitch_12
    iget-object v3, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->showUserAccountBiz(Landroidx/fragment/app/FragmentActivity;)V

    goto/16 :goto_7

    .line 1702
    :pswitch_13
    invoke-direct {v0}, Lcom/metamoji/nt/NtEditorWindowController;->handleLogout()V

    goto/16 :goto_7

    .line 1699
    :pswitch_14
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleResizeButtonTouchUp()V

    goto/16 :goto_7

    .line 1696
    :pswitch_15
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleTrackButtonTouchUp()V

    goto/16 :goto_7

    .line 1693
    :pswitch_16
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->handlePlayAndShowPlayerBar()V

    goto/16 :goto_7

    .line 1690
    :pswitch_17
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleVoiceNavigation(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1682
    :pswitch_18
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v3

    .line 1683
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1684
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1685
    invoke-static {v6, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 1686
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    goto/16 :goto_7

    .line 1674
    :pswitch_19
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v3

    .line 1675
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1676
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1677
    invoke-static {v6, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 1678
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    goto/16 :goto_7

    .line 1666
    :pswitch_1a
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v3

    .line 1667
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1668
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x195

    .line 1669
    invoke-static {v4, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 1670
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    goto/16 :goto_7

    .line 1658
    :pswitch_1b
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v3

    .line 1659
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1660
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1661
    invoke-static {v6, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 1662
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    goto/16 :goto_7

    .line 1650
    :pswitch_1c
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v3

    .line 1651
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1652
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x196

    .line 1653
    invoke-static {v4, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 1654
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->doCommand(Lcom/metamoji/ui/PopupCommand;)Z

    goto/16 :goto_7

    .line 1646
    :pswitch_1d
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v3

    .line 1647
    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    goto/16 :goto_7

    .line 1574
    :pswitch_1e
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->cancelAllMenus()V

    .line 1576
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    .line 1577
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v4

    .line 1578
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->isJumpListActive()Z

    move-result v5

    .line 1582
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v6

    const/4 v8, 0x4

    if-nez v6, :cond_f

    .line 1583
    invoke-virtual {v3, v8}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 1585
    :cond_f
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v6

    if-nez v6, :cond_10

    .line 1586
    invoke-virtual {v3, v8}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    .line 1588
    :cond_10
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    .line 1589
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->hidePlayerBar()V

    .line 1592
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/EditorActivity;->hideEditorBars()V

    .line 1598
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getNoteModeForSchool()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v3

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const-wide/16 v8, 0x1f4

    if-ne v3, v6, :cond_11

    .line 1600
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1601
    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v3, v7, v6}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1602
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v6

    sget-object v7, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6, v7, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 1604
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 1605
    new-instance v6, Lcom/metamoji/nt/NtEditorWindowController$9;

    invoke-direct {v6, v0, v4}, Lcom/metamoji/nt/NtEditorWindowController$9;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v3, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_6

    .line 1619
    :cond_11
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1620
    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v3, v7, v6}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1621
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v6

    sget-object v7, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v6, v7, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 1625
    :goto_6
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v3

    if-nez v3, :cond_16

    if-nez v5, :cond_16

    .line 1627
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 1628
    new-instance v5, Lcom/metamoji/nt/NtEditorWindowController$10;

    invoke-direct {v5, v0, v4}, Lcom/metamoji/nt/NtEditorWindowController$10;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v3, v5, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_7

    .line 1568
    :pswitch_1f
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->showEditorBars()V

    goto/16 :goto_7

    .line 1562
    :pswitch_20
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/noteanytime/EditorActivity;

    .line 1563
    invoke-static {v1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->handleCommandExec(Lcom/metamoji/nt/NtCommand;)V

    goto/16 :goto_7

    .line 1557
    :pswitch_21
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->handleShareObjectInfoView()V

    goto/16 :goto_7

    .line 1553
    :pswitch_22
    invoke-static {}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->openShareCordinator()V

    goto/16 :goto_7

    .line 1550
    :pswitch_23
    invoke-static {}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->openAdminWeb()V

    goto/16 :goto_7

    :pswitch_24
    if-nez v2, :cond_12

    .line 1544
    new-instance v2, Lcom/metamoji/cm/CmContext;

    invoke-direct {v2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1546
    :cond_12
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleAddTextUnitForLabel(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1540
    :pswitch_25
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleGroupingStudentGroupMenuTapped(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1537
    :pswitch_26
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleShowStudentName()V

    goto/16 :goto_7

    .line 1534
    :pswitch_27
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleHideStudentName()V

    goto/16 :goto_7

    .line 1530
    :pswitch_28
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolResetPersonalStatus()V

    goto/16 :goto_7

    .line 1524
    :pswitch_29
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleMakeMyGroup()V

    goto/16 :goto_7

    .line 1520
    :pswitch_2a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleJoinInMyGroup()V

    goto/16 :goto_7

    .line 1516
    :pswitch_2b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleLeaveFromThisGroup()V

    goto/16 :goto_7

    .line 1512
    :pswitch_2c
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleJoinToThisGroup()V

    goto/16 :goto_7

    .line 1507
    :pswitch_2d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartFeaturedPersonalModeByGroup()V

    goto/16 :goto_7

    .line 1503
    :pswitch_2e
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartFeaturedPersonalModeByUserWithContext(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1499
    :pswitch_2f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartFeaturedPersonalModeByUser()V

    goto/16 :goto_7

    .line 1495
    :pswitch_30
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartPersonalModeByGroup()V

    goto/16 :goto_7

    .line 1492
    :pswitch_31
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartPersonalModeByUser()V

    goto/16 :goto_7

    .line 1489
    :pswitch_32
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolManageClassList()V

    goto/16 :goto_7

    .line 1486
    :pswitch_33
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolNewPageFromPersonalLayer()V

    goto/16 :goto_7

    .line 1480
    :pswitch_34
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeLock()V

    goto/16 :goto_7

    .line 1477
    :pswitch_35
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModePresenter()V

    goto/16 :goto_7

    .line 1474
    :pswitch_36
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeFree()V

    goto/16 :goto_7

    .line 1471
    :pswitch_37
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAllowEveryoneAnswer()V

    goto/16 :goto_7

    :pswitch_38
    const/4 v3, 0x2

    .line 1468
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPersonalMode(I)V

    goto/16 :goto_7

    :pswitch_39
    const/16 v16, 0x1

    .line 1465
    invoke-static/range {v16 .. v16}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPersonalMode(I)V

    goto/16 :goto_7

    :pswitch_3a
    const/16 v17, 0x0

    .line 1462
    invoke-static/range {v17 .. v17}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPersonalMode(I)V

    goto/16 :goto_7

    .line 1458
    :pswitch_3b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolEditLayerTeacherPersonal()V

    goto/16 :goto_7

    .line 1454
    :pswitch_3c
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolEditLayerPersonalTemplate()V

    goto/16 :goto_7

    .line 1450
    :pswitch_3d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolEditLayerPersonal()V

    goto/16 :goto_7

    .line 1447
    :pswitch_3e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolEditLayerEdit()V

    goto/16 :goto_7

    .line 1444
    :pswitch_3f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolEditLayerCommon()V

    goto/16 :goto_7

    .line 1441
    :pswitch_40
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPageTypePersonalClass()V

    goto/16 :goto_7

    .line 1438
    :pswitch_41
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPageTypePersonalGroup()V

    goto/16 :goto_7

    .line 1435
    :pswitch_42
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPageTypePersonalUser()V

    goto/16 :goto_7

    .line 1432
    :pswitch_43
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolPageTypeNormal()V

    goto/16 :goto_7

    .line 1426
    :pswitch_44
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 1428
    invoke-static {v2}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleAddSurveyUnit(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1420
    :pswitch_45
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 1422
    invoke-static {v2}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->handleAddFlipUnit(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1413
    :pswitch_46
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 1415
    invoke-static {v2}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleAddSoundUnitFromFile(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1407
    :pswitch_47
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 1409
    invoke-static {v2}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleAddSoundUnit(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1401
    :pswitch_48
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleScoreList()V

    goto/16 :goto_7

    .line 1397
    :pswitch_49
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleScore()V

    goto/16 :goto_7

    .line 1393
    :pswitch_4a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleUnReport()V

    goto/16 :goto_7

    .line 1389
    :pswitch_4b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleReport()V

    goto/16 :goto_7

    .line 1385
    :pswitch_4c
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleUnReportByStudent()V

    goto/16 :goto_7

    .line 1381
    :pswitch_4d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleReportByStudent()V

    goto/16 :goto_7

    .line 1376
    :pswitch_4e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleDeadlineLogList()V

    goto/16 :goto_7

    .line 1372
    :pswitch_4f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleDeadlineSetting()V

    goto/16 :goto_7

    .line 1368
    :pswitch_50
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handlePrevStart()V

    goto/16 :goto_7

    .line 1364
    :pswitch_51
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleReStart()V

    goto/16 :goto_7

    .line 1360
    :pswitch_52
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleEnd()V

    goto/16 :goto_7

    .line 1356
    :pswitch_53
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleStart()V

    goto/16 :goto_7

    .line 1350
    :pswitch_54
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboCommandUseSetting()V

    goto/16 :goto_7

    .line 1346
    :pswitch_55
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboUserListResignPresenter()V

    goto/16 :goto_7

    .line 1343
    :pswitch_56
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboUserListBecomePresenter()V

    goto/16 :goto_7

    .line 1337
    :pswitch_57
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboEnableWriteAccess()V

    goto/16 :goto_7

    .line 1334
    :pswitch_58
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDisableWriteAccess()V

    goto/16 :goto_7

    .line 1331
    :pswitch_59
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboReceiveAllData()V

    goto/16 :goto_7

    :pswitch_5a
    const/16 v16, 0x1

    .line 1328
    invoke-static/range {v16 .. v16}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewNormalDocument(Z)V

    goto/16 :goto_7

    :pswitch_5b
    const/16 v17, 0x0

    .line 1325
    invoke-static/range {v17 .. v17}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewNormalDocument(Z)V

    goto/16 :goto_7

    .line 1322
    :pswitch_5c
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboSettings()V

    goto/16 :goto_7

    .line 1316
    :pswitch_5d
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboManageMember()V

    goto/16 :goto_7

    .line 1313
    :pswitch_5e
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboResignClerk()V

    goto/16 :goto_7

    .line 1310
    :pswitch_5f
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboBecomeClerk()V

    goto/16 :goto_7

    .line 1307
    :pswitch_60
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboResignPresenter()V

    goto/16 :goto_7

    .line 1304
    :pswitch_61
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboBecomePresenter()V

    goto/16 :goto_7

    .line 1301
    :pswitch_62
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByFile()V

    goto/16 :goto_7

    .line 1298
    :pswitch_63
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplication()V

    goto/16 :goto_7

    .line 1295
    :pswitch_64
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByApplication()V

    goto/16 :goto_7

    :pswitch_65
    const/4 v10, 0x0

    .line 1287
    invoke-static {v10}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistribute(Z)V

    goto/16 :goto_7

    :pswitch_66
    const/4 v10, 0x0

    .line 1284
    invoke-static {v10, v10}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZZ)V

    goto/16 :goto_7

    :pswitch_67
    const/4 v10, 0x0

    .line 1281
    invoke-static {v10, v10}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZZ)V

    goto/16 :goto_7

    .line 1276
    :pswitch_68
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitCombine()Z

    goto/16 :goto_7

    .line 1269
    :pswitch_69
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isUseTextLineExtractSetting()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1270
    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ToStroke:Lcom/metamoji/tle/TextLineExtractType;

    invoke-direct {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V

    goto/16 :goto_7

    .line 1272
    :cond_13
    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ToStrokeAll:Lcom/metamoji/tle/TextLineExtractType;

    invoke-direct {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V

    goto/16 :goto_7

    .line 1262
    :pswitch_6a
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isUseTextLineExtractSetting()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1263
    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ToFont:Lcom/metamoji/tle/TextLineExtractType;

    invoke-direct {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V

    goto/16 :goto_7

    .line 1265
    :cond_14
    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ToFontAll:Lcom/metamoji/tle/TextLineExtractType;

    invoke-direct {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V

    goto/16 :goto_7

    .line 1258
    :pswitch_6b
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->toggleImeAndMazec()V

    goto/16 :goto_7

    .line 1255
    :pswitch_6c
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleSaveAlbumAll(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1252
    :pswitch_6d
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleSaveAlbumThisPage(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1249
    :pswitch_6e
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleSaveAlbumSelection(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1246
    :pswitch_6f
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleExportPoisonousMushroom(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1237
    :pswitch_70
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleInsertAudio(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1220
    :pswitch_71
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleInsertPdf(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1215
    :pswitch_72
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleInsertDocument(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1212
    :pswitch_73
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleSelectDocNewPage(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1209
    :pswitch_74
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handlePaperSelectNewPage(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1206
    :pswitch_75
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleApplySheetTemplate(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1203
    :pswitch_76
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handlePaperSelect(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1200
    :pswitch_77
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleReadWebPage(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1193
    :pswitch_78
    iget-object v3, v0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v3, :cond_16

    const/4 v7, 0x1

    .line 1194
    invoke-interface {v3, v7}, Lcom/metamoji/nt/INtEditor;->qrCodeReader(Z)V

    goto/16 :goto_7

    .line 1189
    :pswitch_79
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleTakeAPicture(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1186
    :pswitch_7a
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleSelectPhotoLibrary(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1183
    :pswitch_7b
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handlePutInShape(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1180
    :pswitch_7c
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handlePutInParts(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1177
    :pswitch_7d
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleNewDocTemplateFromCurrent(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1174
    :pswitch_7e
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleCopyCurrentNote(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1171
    :pswitch_7f
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleOpenDocumentByID(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1168
    :pswitch_80
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleCreateDocumentFromDocumentTemplate(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1165
    :pswitch_81
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleNewDocumentSelectDoc(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1162
    :pswitch_82
    invoke-direct {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->handleNewDocument(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_7

    .line 1159
    :pswitch_83
    invoke-direct {v0}, Lcom/metamoji/nt/NtEditorWindowController;->handleCloseDocument()V

    goto/16 :goto_7

    .line 1156
    :pswitch_84
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->laserPointerStyle()V

    goto/16 :goto_7

    .line 1153
    :pswitch_85
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->systemOption()V

    goto/16 :goto_7

    .line 1150
    :pswitch_86
    invoke-direct {v0}, Lcom/metamoji/nt/NtEditorWindowController;->noteTemplateSettings()V

    goto/16 :goto_7

    .line 1145
    :pswitch_87
    sget-object v3, Lcom/metamoji/ui/dialog/DocumentSettings2;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/dialog/DocumentSettings2;

    .line 1146
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->documentSettings2Done(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    goto/16 :goto_7

    .line 1141
    :pswitch_88
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->documentSettings2()V

    goto/16 :goto_7

    .line 1136
    :pswitch_89
    sget-object v3, Lcom/metamoji/ui/dialog/DocumentSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/dialog/DocumentSettings;

    .line 1137
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->documentSettingsDone(Lcom/metamoji/ui/dialog/DocumentSettings;)V

    goto :goto_7

    .line 1132
    :pswitch_8a
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->documentSettings()V

    goto :goto_7

    .line 1127
    :pswitch_8b
    invoke-virtual {v2, v5}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/UiPaperSettingsParam;

    .line 1128
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtEditorWindowController;->coverSelectAndInsertDone(Lcom/metamoji/ui/UiPaperSettingsParam;Lcom/metamoji/cm/CmContext;)V

    goto :goto_7

    .line 1121
    :pswitch_8c
    invoke-virtual {v2, v5}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/UiPaperSettingsParam;

    .line 1122
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->paperBackSettingsDone(Lcom/metamoji/ui/UiPaperSettingsParam;)V

    goto :goto_7

    .line 1115
    :pswitch_8d
    const-string v3, "PaperSizeSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/dialog/PaperSelect;

    .line 1116
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->paperSizeSettingsDone(Lcom/metamoji/ui/dialog/PaperSelect;)V

    goto :goto_7

    .line 1111
    :pswitch_8e
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->coverSelectAndInsert()V

    goto :goto_7

    .line 1108
    :pswitch_8f
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->paperBackSettings()V

    goto :goto_7

    .line 1105
    :pswitch_90
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->paperSizeSettings()V

    goto :goto_7

    :pswitch_91
    const/4 v10, 0x0

    .line 1089
    invoke-virtual {v2, v7}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1090
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1092
    invoke-interface {v4}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v4}, Lcom/metamoji/noteanytime/EditorActivity;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v4

    .line 1093
    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v5, :cond_15

    .line 1094
    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_VIEW:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    goto/16 :goto_0

    .line 1095
    :cond_15
    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v5, :cond_0

    .line 1096
    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_PEN:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    goto/16 :goto_0

    :cond_16
    :goto_7
    :pswitch_92
    const/4 v9, 0x1

    :goto_8
    if-nez v9, :cond_17

    .line 2007
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result v9

    :cond_17
    if-nez v9, :cond_18

    .line 2011
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 2013
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/nt/NtDocument;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v16, 0x1

    return v16

    :cond_18
    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_92
        :pswitch_91
        :pswitch_92
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_92
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_92
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
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
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 2

    .line 2228
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_1

    .line 2230
    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/INtEditor;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    .line 2231
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2233
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/DetailWindow;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    .line 2235
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2237
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtSearchTextBar;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    .line 2243
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2244
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtDocument;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 8

    .line 2286
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$48;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    if-eq v0, v4, :cond_1

    const/16 v5, 0x72

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9a

    if-eq v0, v5, :cond_1

    const/16 v5, 0x18

    if-eq v0, v5, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v5, 0x87

    if-eq v0, v5, :cond_0

    const/16 v5, 0x88

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 2298
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 2299
    const-string v5, "MMJJumpEnabled"

    invoke-virtual {v0, v5, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 2292
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 2310
    :cond_2
    :goto_0
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$48;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const/4 v5, 0x6

    const/16 v6, 0x76

    const/16 v7, 0x1d

    if-eq v0, v5, :cond_11

    if-eq v0, v1, :cond_10

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_d

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x16

    if-eq v0, v1, :cond_8

    const/16 v1, 0x17

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9c

    if-eq v0, v1, :cond_4

    const-string/jumbo v1, "support_reedit"

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 2447
    :pswitch_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getSingleSelectionTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2448
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformTextUnitStyleToSystem()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1

    .line 2439
    :pswitch_1
    invoke-static {p1}, Lcom/metamoji/nt/NtSupportLog;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_1

    .line 2362
    :pswitch_2
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->canPerformTextUnitCombine()Z

    move-result v0

    goto/16 :goto_2

    .line 2354
    :pswitch_3
    sget-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToStroke:Lcom/metamoji/tle/TextLineExtractType;

    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->isEnableCommand(Lcom/metamoji/tle/TextLineExtractType;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    if-eqz v0, :cond_3

    .line 2356
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMazecImsManager;->isSupported(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2357
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 2346
    :pswitch_4
    sget-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToFont:Lcom/metamoji/tle/TextLineExtractType;

    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->isEnableCommand(Lcom/metamoji/tle/TextLineExtractType;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    if-eqz v0, :cond_3

    .line 2348
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMazecImsManager;->isSupported(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2349
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    :cond_3
    move v2, v5

    goto/16 :goto_3

    .line 2383
    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_12

    goto :goto_1

    .line 2338
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 2339
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isBackgroundPDF()Z

    move-result v0

    goto/16 :goto_2

    .line 2373
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTemplate()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 2377
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_1

    .line 2366
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_9
    :goto_1
    move v2, v3

    goto/16 :goto_3

    .line 2406
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 2407
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2408
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    sget-object v5, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v1, v5, :cond_b

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_12

    .line 2410
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1

    .line 2332
    :cond_c
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->canCreatePdf()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 2324
    :cond_d
    const-string v0, "manual"

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->menuEnabled(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 2326
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 2422
    :cond_e
    invoke-static {}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->isMushroomEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    .line 2424
    :cond_f
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableWebUnit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1

    .line 2417
    :cond_10
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->Shape:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 2342
    :cond_11
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->SelectCoverInsertFront:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    :goto_2
    xor-int/lit8 v2, v0, 0x1

    :cond_12
    :goto_3
    const/16 v0, 0x30

    if-nez v2, :cond_16

    .line 2460
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2461
    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$48;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v4, :cond_14

    if-eq v1, v0, :cond_13

    const/16 v4, 0x32

    if-eq v1, v4, :cond_13

    if-eq v1, v6, :cond_13

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_13

    const/16 v4, 0x9f

    if-eq v1, v4, :cond_13

    const/16 v4, 0x73

    if-eq v1, v4, :cond_13

    const/16 v4, 0x74

    if-eq v1, v4, :cond_13

    goto :goto_5

    :cond_13
    :goto_4
    move v2, v3

    goto :goto_5

    .line 2464
    :cond_14
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4

    .line 2467
    :cond_15
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2469
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    goto :goto_4

    :cond_16
    :goto_5
    if-nez v2, :cond_20

    .line 2493
    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$48;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v7, :cond_1f

    if-eq v1, v0, :cond_1e

    const/16 v0, 0x94

    if-eq v1, v0, :cond_1b

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_8

    .line 2559
    :pswitch_5
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getSingleSelectionTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2560
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->canPerformTextUnitStyle()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_17
    return v3

    .line 2535
    :pswitch_6
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    .line 2525
    :pswitch_7
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v3

    .line 2529
    :cond_18
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_20

    return v3

    .line 2553
    :pswitch_8
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isMovieFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isCloudAvailable()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_19
    return v3

    .line 2519
    :pswitch_9
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    .line 2540
    :pswitch_a
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableWebDAV:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v3

    .line 2547
    :cond_1a
    :pswitch_b
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isMovieFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_20

    return v3

    .line 2496
    :pswitch_c
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByPrinter:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    .line 2568
    :cond_1b
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object v0

    .line 2569
    invoke-interface {v0}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v1

    .line 2570
    invoke-interface {v0}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v0

    .line 2572
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2574
    invoke-virtual {v1, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2576
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    .line 2579
    :goto_6
    const-string v1, "application/vnd.metamoji.model.atdoc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "application/vnd.metamoji.model.atshare"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_7

    :cond_1d
    move v3, v2

    :goto_7
    move v2, v3

    goto :goto_8

    .line 2505
    :cond_1e
    :pswitch_d
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByApp:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    .line 2510
    :cond_1f
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableWebUnit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    :cond_20
    :goto_8
    if-nez v2, :cond_21

    .line 2590
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2591
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1

    :cond_21
    return v2

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x95
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7c
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8c
        :pswitch_b
        :pswitch_b
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa0
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 2

    .line 2262
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2265
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/INtEditor;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v0

    .line 2268
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2269
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/nt/NtDocument;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public refreshDetailWindow()V
    .locals 1

    .line 4948
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-eqz v0, :cond_0

    .line 4949
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->refreshDetailWindow()V

    :cond_0
    return-void
.end method

.method public resetUserDrawing()V
    .locals 2

    .line 5247
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_2

    .line 5248
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5249
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5250
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$42;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtEditorWindowController$42;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 5257
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5258
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 5260
    iput v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    .line 5261
    iget-boolean v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    if-eqz v1, :cond_2

    .line 5262
    iput-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    .line 5264
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->onUserDrawingEnd()V

    .line 5265
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public selectTargetPages(Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;)V
    .locals 7

    .line 3233
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PaperSelect_Confirm"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3238
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->hasMultiSelectPages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3239
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->SelectedPages:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->getTargetPages(Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;->done(Ljava/util/List;)V

    return-void

    .line 3243
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 3244
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3246
    sget v3, Lcom/metamoji/noteanytime/R$string;->SheetSettings_Msg_Message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v3, 0x4

    .line 3248
    new-array v3, v3, [Ljava/lang/CharSequence;

    sget v4, Lcom/metamoji/noteanytime/R$string;->SheetSettings_Msg_AllPage:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/metamoji/noteanytime/R$string;->SheetSettings_Msg_CurrentPage:I

    .line 3249
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget v4, Lcom/metamoji/noteanytime/R$string;->SheetSettings_Msg_CurrentAndAfterPage:I

    .line 3250
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    .line 3251
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 3253
    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$24;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$24;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;)V

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3273
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3277
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 3278
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public setPageStyle(Ljava/util/List;Lcom/metamoji/nt/NtPageController$BGImageParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/nt/NtPageController$BGImageParams;",
            ")V"
        }
    .end annotation

    .line 3327
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3328
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3330
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3334
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v7

    .line 3335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3336
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v6, p2

    .line 3340
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/nt/NtPageController;->setPageStyleSpecialWithSizeChanging(ZLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtPageController$BGImageParams;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_0

    .line 3342
    :cond_3
    invoke-virtual {v0, v7}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setPaperSize(Ljava/util/List;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/cm/SizeF;",
            "Lcom/metamoji/cm/SizeF;",
            ")V"
        }
    .end annotation

    .line 3348
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3349
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3351
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3355
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 3356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3357
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 3361
    :cond_2
    invoke-virtual {v2, p2, p3, v1}, Lcom/metamoji/nt/NtPageController;->setPageStyleSizeChanging(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_0

    .line 3363
    :cond_3
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showPlayerBar(Z)V
    .locals 1

    .line 5353
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    return-void

    .line 5356
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtEditor;->showPlayerBar(Z)V

    return-void
.end method

.method public showPlaylist()V
    .locals 1

    .line 5360
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    if-nez v0, :cond_0

    return-void

    .line 5363
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->showPlaylist()V

    return-void
.end method

.method public showSoftInput(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2668
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z

    move-result p1

    return p1
.end method

.method public showSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z
    .locals 3

    .line 2671
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 2677
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2678
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2680
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->killFocusInput()V

    .line 2685
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->updatePageNavigationButtonsByShowSoftInput(Z)V

    .line 2688
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2689
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->showSoftInput(ILandroid/os/ResultReceiver;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 2693
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2695
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 2697
    invoke-virtual {v0, p1, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    .line 2705
    :cond_3
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtEditorWindowController$21;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtEditorWindowController$21;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method systemOption()V
    .locals 5

    .line 3727
    new-instance v0, Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/SystemOption;-><init>()V

    .line 3728
    new-instance v1, Lcom/metamoji/ui/dialog/NtDialogTask;

    const-string v2, "SystemOption"

    invoke-direct {v1, v2}, Lcom/metamoji/ui/dialog/NtDialogTask;-><init>(Ljava/lang/String;)V

    .line 3729
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/metamoji/nt/NtEditorWindowController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V

    .line 3749
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->_editorPage:Lcom/metamoji/nt/INtEditor;

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/SystemOption;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)Z
    .locals 3

    .line 2745
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2746
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/metamoji/nt/NtMazecImsManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 2749
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2752
    :cond_1
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    return v1

    .line 2757
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public userDrawingEnd()V
    .locals 4

    .line 5211
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_4

    .line 5212
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5213
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5214
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$41;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtEditorWindowController$41;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 5221
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 5223
    iput v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    .line 5225
    :cond_1
    iget v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5226
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->mUserDrawingResetTimerFired:Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;

    if-nez v0, :cond_2

    .line 5227
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->mUserDrawingResetTimerFired:Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;

    .line 5229
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->mUserDrawingResetTimerFired:Lcom/metamoji/nt/NtEditorWindowController$UserDrawingResetTimerFired;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    .line 5233
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5235
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object v0

    .line 5236
    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->checkSelection()V

    :cond_4
    return-void
.end method

.method public userDrawingStart()V
    .locals 2

    .line 5166
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_2

    .line 5167
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5169
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5170
    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$40;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtEditorWindowController$40;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 5177
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5178
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlagResetTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 5180
    :cond_1
    iget v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingCount:I

    .line 5181
    iget-boolean v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    if-nez v0, :cond_2

    .line 5182
    iput-boolean v1, p0, Lcom/metamoji/nt/NtEditorWindowController;->m_userDrawingFlag:Z

    .line 5183
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->onUserDrawingStart()V

    .line 5184
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 5185
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
