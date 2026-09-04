.class public Lcom/metamoji/inputmethodservice/InputMethodService;
.super Landroid/content/ContextWrapper;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;,
        Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Lcom/metamoji/inputmethodservice/InputMethodService$Insets;
    }
.end annotation


# instance fields
.field private _inShowWindow:Z

.field _inflater:Landroid/view/LayoutInflater;

.field private _initialized:Z

.field private _inputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private _inputFrame:Landroid/widget/FrameLayout;

.field private _inputStarted:Z

.field private _inputView:Landroid/view/View;

.field private _inputViewStarted:Z

.field private _isInputViewShown:Z

.field private _showInputFlags:I

.field private _showInputRequested:Z

.field private _softKeyboardView:Landroid/view/View;

.field private _startedInputConnection:Landroid/view/inputmethod/InputConnection;

.field private _windowAdded:Z

.field private _windowCreated:Z

.field private _windowVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$fput_inputStarted(Lcom/metamoji/inputmethodservice/InputMethodService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_showInputFlags(Lcom/metamoji/inputmethodservice/InputMethodService;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_showInputRequested(Lcom/metamoji/inputmethodservice/InputMethodService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monToggleSoftInput(Lcom/metamoji/inputmethodservice/InputMethodService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private finishViews()V
    .locals 2

    .line 977
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 984
    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    return-void
.end method

.method private handleBack(Z)Z
    .locals 3

    .line 1170
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1180
    invoke-virtual {p0, v2}, Lcom/metamoji/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    :cond_0
    return v1

    .line 1182
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->hideWindow()V

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private onToggleSoftInput(II)V
    .locals 1

    .line 1251
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    return-void

    .line 1254
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    return-void
.end method

.method private requestShowSelf(I)V
    .locals 2

    .line 1166
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtMazecImsManager;->showSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method doFinishInput()V
    .locals 2

    .line 1054
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1055
    invoke-virtual {p0, v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 1061
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    .line 1063
    iget-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    if-eqz v1, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1066
    :cond_1
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    const/4 v0, 0x0

    .line 1067
    iput-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_startedInputConnection:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->doFinishInput()V

    :cond_0
    const/4 v0, 0x1

    .line 1075
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    .line 1076
    iput-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_startedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1077
    iput-object p2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1078
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->initialize()V

    .line 1079
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1080
    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    if-eqz p1, :cond_1

    .line 1081
    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    if-eqz p1, :cond_1

    .line 1082
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    .line 1083
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_1
    return-void
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_startedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .line 989
    invoke-direct {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->finishViews()V

    .line 991
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 993
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    .line 994
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onWindowHidden()V

    :cond_0
    return-void
.end method

.method initViews()V
    .locals 4

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_initialized:Z

    .line 400
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowCreated:Z

    .line 401
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    .line 424
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$id;->inputArea:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    :cond_0
    const/4 v2, 0x0

    .line 428
    iput-object v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputView:Landroid/view/View;

    .line 429
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_isInputViewShown:Z

    .line 435
    iget-object v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 436
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 441
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->softkeyboard_frame:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    .line 442
    iget-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method initialize()V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_initialized:Z

    .line 394
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onInitializeInterface()V

    :cond_0
    return-void
.end method

.method public isFullscreenMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    .line 739
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_isInputViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowInputRequested()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onBindInput()V
    .locals 0

    return-void
.end method

.method public onComputeInsets(Lcom/metamoji/inputmethodservice/InputMethodService$Insets;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 499
    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    .line 500
    iget v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputFlags:I

    .line 501
    iget-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    .line 503
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->initViews()V

    const/4 v2, 0x0

    .line 504
    iput-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    .line 506
    iget-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 508
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 507
    invoke-virtual {p0, v2, v4, v3}, Lcom/metamoji/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {p0, v0, v3}, Lcom/metamoji/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p0, v3}, Lcom/metamoji/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->hideWindow()V

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->hideWindow()V

    .line 533
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 374
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inflater:Landroid/view/LayoutInflater;

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->initViews()V

    return-void
.end method

.method public onCreateEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    const/4 p1, 0x0

    .line 448
    invoke-virtual {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputMethodInterface()Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;
    .locals 1

    .line 544
    new-instance v0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Lcom/metamoji/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;
    .locals 1

    .line 552
    new-instance v0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Lcom/metamoji/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 470
    invoke-direct {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->finishViews()V

    .line 471
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowAdded:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDestroyEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 453
    sget v0, Lcom/metamoji/noteanytime/R$id;->softkeyboard_frame:I

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    const/4 p1, 0x0

    .line 462
    iput-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    .line 463
    iput-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 3

    .line 751
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 752
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public onFinishInput()V
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 861
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    return-void
.end method

.method public onInitializeInterface()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1213
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1214
    invoke-direct {p0, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1215
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1236
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1237
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1238
    invoke-direct {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShowInputRequested(IZ)Z
    .locals 0

    .line 882
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public onUnbindInput()V
    .locals 0

    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 0

    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    return-void
.end method

.method public onWindowShown()V
    .locals 0

    return-void
.end method

.method public requestHideSelf(I)V
    .locals 2

    .line 1151
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtMazecImsManager;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 2

    .line 1299
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1300
    iget p1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-nez p1, :cond_2

    :cond_0
    iget p1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    .line 1308
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1310
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13

    .line 1271
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1273
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1274
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1277
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public sendKeyChar(C)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x29

    .line 1338
    invoke-virtual {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    return-void

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1342
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    return-void

    .line 1331
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x42

    .line 1332
    invoke-virtual {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    :cond_2
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 807
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    :cond_0
    iput-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputView:Landroid/view/View;

    return-void
.end method

.method public showWindow(Z)V
    .locals 2

    .line 910
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inShowWindow:Z

    if-eqz v0, :cond_0

    .line 911
    const-string p1, "Re-entrance in to showWindow"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 917
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inShowWindow:Z

    .line 918
    invoke-virtual {p0, p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inShowWindow:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inShowWindow:Z

    .line 923
    throw p1
.end method

.method showWindowInner(Z)V
    .locals 3

    .line 928
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    const/4 v1, 0x1

    .line 929
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    .line 930
    iget-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    if-nez v2, :cond_0

    .line 931
    iget-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputStarted:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 934
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->initialize()V

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 945
    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowAdded:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowCreated:Z

    if-nez p1, :cond_2

    .line 946
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowAdded:Z

    .line 947
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowCreated:Z

    .line 948
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->initialize()V

    .line 954
    :cond_2
    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 955
    iget-boolean p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    if-nez p1, :cond_3

    .line 956
    iput-boolean v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputViewStarted:Z

    .line 957
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_3
    if-nez v0, :cond_4

    .line 971
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 972
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_softKeyboardView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateFullscreenMode()V
    .locals 0

    return-void
.end method

.method public updateInputViewShown()V
    .locals 3

    .line 712
    iget-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_showInputRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 713
    :goto_0
    iget-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_isInputViewShown:Z

    if-eq v2, v0, :cond_2

    iget-boolean v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_windowVisible:Z

    if-eqz v2, :cond_2

    .line 714
    iput-boolean v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_isInputViewShown:Z

    .line 715
    iget-object v2, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService;->_inputView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 717
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->initialize()V

    .line 718
    invoke-virtual {p0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {p0, v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
