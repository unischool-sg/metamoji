.class public Lcom/metamoji/nt/NtSearchTextBar;
.super Landroid/widget/LinearLayout;
.source "NtSearchTextBar.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;


# static fields
.field public static final EXTINFO_IGNORE_CASE:Ljava/lang/String; = "ignoreCase"

.field public static final EXTINFO_SEARCH_WORD:Ljava/lang/String; = "searchWord"


# instance fields
.field _compareNoCase:Z

.field private _editText:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$mhandleBarrierViewTouched(Lcom/metamoji/nt/NtSearchTextBar;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->handleBarrierViewTouched(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleCloseClicked(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->handleCloseClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEditTextFocusChanged(Lcom/metamoji/nt/NtSearchTextBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->handleEditTextFocusChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEditorAction(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->handleEditorAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNextClicked(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->handleNextClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePrevClicked(Lcom/metamoji/nt/NtSearchTextBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->handlePrevClicked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_compareNoCase:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/metamoji/nt/NtSearchTextBar;->_compareNoCase:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/metamoji/nt/NtSearchTextBar;->_compareNoCase:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getEditorActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 61
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleBarrierViewTouched(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 191
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSearchTextBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 197
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 199
    :goto_0
    instance-of v3, v2, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v3, :cond_2

    .line 200
    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput()V

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->requestFocus()Z

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private handleCloseClicked()V
    .locals 3

    .line 290
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_HIDE_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handleEditTextFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 237
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_1

    .line 240
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->callHideSoftInput()V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getEditorActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 247
    sget v1, Lcom/metamoji/noteanytime/R$id;->barrier_for_searchtextbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    .line 248
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private handleEditorAction()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->handleNextClicked()V

    return-void

    .line 230
    :cond_0
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->handleNextClicked()V

    :cond_1
    return-void
.end method

.method private handleNextClicked()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 269
    const-string/jumbo v2, "searchWord"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    iget-boolean v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_compareNoCase:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "ignoreCase"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_NEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private handlePrevClicked()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 282
    const-string/jumbo v2, "searchWord"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-boolean v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_compareNoCase:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "ignoreCase"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SEARCH_TEXT_PREV:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$layout;->searchtextbar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget p1, Lcom/metamoji/noteanytime/R$id;->stb_keyword:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    .line 74
    sget v0, Lcom/metamoji/noteanytime/R$string;->SEARCH_TEXT:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 75
    iget-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    new-instance v0, Lcom/metamoji/nt/NtSearchTextBar$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSearchTextBar$1;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 96
    iget-object p1, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    new-instance v0, Lcom/metamoji/nt/NtSearchTextBar$2;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSearchTextBar$2;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    sget p1, Lcom/metamoji/noteanytime/R$id;->stb_next:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 102
    new-instance v0, Lcom/metamoji/nt/NtSearchTextBar$3;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSearchTextBar$3;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p1, Lcom/metamoji/noteanytime/R$id;->stb_prev:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 108
    new-instance v0, Lcom/metamoji/nt/NtSearchTextBar$4;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSearchTextBar$4;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget p1, Lcom/metamoji/noteanytime/R$id;->stb_close:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 114
    new-instance v0, Lcom/metamoji/nt/NtSearchTextBar$5;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSearchTextBar$5;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getEditorActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 121
    sget v0, Lcom/metamoji/noteanytime/R$id;->barrier_for_searchtextbar:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/metamoji/nt/NtSearchTextBar$6;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSearchTextBar$6;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getSearchWord()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextSearchFactory()Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createTextSearchInUnitModelFactory()Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSearchWordInputFocus()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 4

    .line 157
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentModel(Lcom/metamoji/df/model/IModel;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentPosition(Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->requestFocus()Z

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSearchTextBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_2
    const/4 v0, 0x4

    .line 175
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSearchTextBar;->setVisibility(I)V

    return-void
.end method

.method public isCompareNoCase()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_compareNoCase:Z

    return v0
.end method

.method public killFocusInput()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 257
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 2

    .line 305
    sget-object v0, Lcom/metamoji/nt/NtSearchTextBar$7;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->stb_prev:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 313
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return v0

    .line 307
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->stb_next:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return v0
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSearchWordInputFocus()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/nt/NtSearchTextBar;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSearchTextBar;->setVisibility(I)V

    return-void
.end method

.method public updatePosition(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x32

    .line 145
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    int-to-float p2, p2

    .line 148
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSearchTextBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
