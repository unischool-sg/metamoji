.class Lcom/metamoji/noteanytime/EditorActivity$MainViewport;
.super Lcom/metamoji/df/sprite/Viewport;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainViewport"
.end annotation


# instance fields
.field private _handler:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;",
            ">;"
        }
    .end annotation
.end field

.field private _initialized:Z

.field private onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$meditDocument(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->editDocument(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1968
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1960
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_initialized:Z

    const/4 p1, 0x0

    .line 1969
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_handler:Lcom/metamoji/cm/ICmEventHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
    .locals 0

    .line 1977
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1960
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_initialized:Z

    .line 1978
    invoke-direct {p0, p2, p3}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->initOpenDocumentHandler(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void
.end method

.method private editDocument(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
    .locals 9

    .line 1986
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1990
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v8

    .line 1994
    :try_start_0
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/noteanytime/EditorActivity;->_copiedDocID:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/noteanytime/EditorActivity;->_copiedDocID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1995
    new-instance v1, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v4

    iget-boolean v4, v4, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/nt/NtMRUDocList$MinItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1996
    :cond_1
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    if-eqz v1, :cond_2

    .line 1997
    new-instance v1, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v4

    iget-boolean v4, v4, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/nt/NtMRUDocList$MinItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    .line 1999
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfgetownerView()Lcom/metamoji/nt/INtOwnerView;

    move-result-object v1

    iget-object v2, v8, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v8}, Lcom/metamoji/noteanytime/EditorActivity;->getDisplaySize()Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v4

    iget-object v5, v4, Lcom/metamoji/noteanytime/EditorActivity;->_pageID:Ljava/lang/String;

    new-instance v7, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;

    invoke-direct {v7, p0, v8, v0, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtEditorWindowController;Landroid/os/Bundle;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/nt/NtEditorWindowController;->editDocument(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/lang/String;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2063
    invoke-static {v8, p1}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$monNoteLoadError(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/Throwable;)V

    return-void
.end method

.method private initOpenDocumentHandler(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
    .locals 1

    .line 2073
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;-><init>(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_handler:Lcom/metamoji/cm/ICmEventHandler;

    .line 2079
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    .line 2080
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_handler:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method


# virtual methods
.method public documentEditorPrepared(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
    .locals 2

    .line 2105
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 2106
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2107
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;-><init>(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 2116
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_initialized:Z

    if-nez v0, :cond_1

    .line 2117
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->initOpenDocumentHandler(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void

    .line 2119
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->editDocument(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 2089
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/df/sprite/Viewport;->onSizeChanged(IIII)V

    .line 2090
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_initialized:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2091
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_initialized:Z

    .line 2092
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    .line 2093
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 2094
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_handler:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 2096
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->_handler:Lcom/metamoji/cm/ICmEventHandler;

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2127
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getFocusedTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2130
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput(Z)V

    goto :goto_0

    .line 2132
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->requestFocus()Z

    .line 2135
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
