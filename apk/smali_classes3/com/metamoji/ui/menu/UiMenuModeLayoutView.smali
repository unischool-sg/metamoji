.class public Lcom/metamoji/ui/menu/UiMenuModeLayoutView;
.super Landroid/view/ViewGroup;
.source "UiMenuModeLayoutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static MARGIN:I = 0xa

.field static eraser:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static select:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static text:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;


# instance fields
.field final MARGIN_B:I

.field final MARGIN_L:I

.field final MARGIN_R:I

.field final MARGIN_T:I

.field _anchor:Landroid/graphics/Rect;

.field _context:Landroid/content/Context;

.field _currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field _menubase:Lcom/metamoji/ui/CustomMenuView;

.field _modeBtnCount:I

.field _paint:Landroid/graphics/Paint;

.field _pallet:Landroid/graphics/Rect;

.field _tmpRect:Landroid/graphics/Rect;

.field _tools:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field _toolsForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field m_needlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    .line 169
    new-array v1, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX1:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX2:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX3:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX4:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 170
    new-array v1, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_CONTAIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sput-object v1, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->select:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 171
    new-array v1, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_THIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_NOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_WIDE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sput-object v1, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->eraser:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v1, 0x7

    .line 172
    new-array v1, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_PLUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MINUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_CONTEXT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_UNIT_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v0

    sput-object v1, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->text:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/CustomMenuView;)V
    .locals 9

    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->MARGIN_L:I

    .line 45
    iput v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->MARGIN_T:I

    const/16 v1, 0x8

    .line 46
    iput v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->MARGIN_R:I

    .line 47
    iput v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->MARGIN_B:I

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->m_needlayout:Z

    .line 54
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_anchor:Landroid/graphics/Rect;

    .line 55
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_tmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x6

    .line 64
    iput v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_modeBtnCount:I

    .line 167
    new-array v3, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v1

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v0

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v8, 0x5

    aput-object v4, v3, v8

    iput-object v3, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_tools:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x7

    .line 168
    new-array v3, v3, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v1

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v5

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v6

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v7

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v0

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v3, v8

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ARRANGE_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v3, v2

    iput-object v3, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_toolsForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v5, v0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->setWillNotDraw(Z)V

    .line 70
    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_menubase:Lcom/metamoji/ui/CustomMenuView;

    .line 72
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->init()V

    return-void
.end method

.method private ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 545
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 549
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private makeSubPallet()V
    .locals 10

    const/high16 v0, 0x42a00000    # 80.0f

    .line 272
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x42200000    # 40.0f

    .line 274
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 275
    iget-object v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v3, :cond_0

    .line 276
    sget-object v2, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v3, :cond_1

    .line 278
    sget-object v2, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->eraser:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v3, :cond_2

    .line 280
    sget-object v2, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->select:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 281
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v3, :cond_3

    .line 282
    sget-object v2, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->text:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_c

    .line 285
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 287
    :goto_1
    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_9

    aget-object v7, v2, v5

    .line 288
    sget-object v8, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->text:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v8, :cond_8

    if-eqz v0, :cond_7

    .line 290
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_5

    sget-object v8, Lcom/metamoji/noteanytime/BuildConfig;->EMBEDDING_MAZEC:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    .line 292
    :cond_5
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_6

    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    .line 294
    :cond_6
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_8

    goto :goto_3

    .line 300
    :cond_7
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v7, v8, :cond_8

    goto :goto_3

    .line 306
    :cond_8
    new-instance v8, Lcom/metamoji/ui/flexible/FxPalletButton;

    iget-object v9, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_context:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/metamoji/ui/flexible/FxPalletButton;-><init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 307
    invoke-static {v8, v7}, Lcom/metamoji/ui/HoverCm;->setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 308
    invoke-virtual {v8, v1, v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSize(II)V

    .line 309
    invoke-virtual {v8, v3}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    .line 310
    invoke-virtual {v8, p0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {p0, v7}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSelected(Z)V

    .line 312
    invoke-virtual {p0, v8}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v2, :cond_b

    .line 319
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAPE_PEN_MODECHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 320
    new-instance v2, Lcom/metamoji/ui/flexible/FxPalletButton;

    iget-object v4, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_context:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lcom/metamoji/ui/flexible/FxPalletButton;-><init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 321
    invoke-static {v2, v0}, Lcom/metamoji/ui/HoverCm;->setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 322
    invoke-virtual {v2, v1, v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSize(II)V

    .line 323
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->isShapePenModeButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 324
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    goto :goto_4

    :cond_a
    const/16 v3, 0x8

    .line 326
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    .line 328
    :goto_4
    invoke-virtual {v2, p0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSelected(Z)V

    .line 330
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    :cond_b
    mul-int v0, v1, v6

    .line 336
    :cond_c
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private makepallet()V
    .locals 20

    move-object/from16 v0, p0

    .line 176
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/metamoji/noteanytime/EditorActivity;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 183
    :goto_0
    iget-object v8, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_toolsForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/high16 v1, 0x42200000    # 40.0f

    .line 184
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v2, v1

    .line 187
    array-length v15, v8

    .line 188
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 189
    sget-object v3, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    iget-object v4, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 206
    :pswitch_0
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ARRANGE_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    .line 203
    :pswitch_1
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    .line 200
    :pswitch_2
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    .line 197
    :pswitch_3
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    .line 194
    :pswitch_4
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    .line 191
    :pswitch_5
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 211
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 212
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43a00000    # 320.0f

    div-float v16, v3, v4

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move/from16 v17, v5

    :goto_2
    if-ge v4, v15, :cond_a

    .line 216
    aget-object v9, v8, v4

    .line 217
    invoke-static {v9}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    .line 223
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_1

    .line 224
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_VIEW:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    :goto_3
    move-object/from16 v18, v1

    move-object v11, v10

    goto :goto_4

    .line 225
    :cond_1
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_2

    .line 226
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_POINT:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 227
    :cond_2
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_3

    .line 228
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_WRITE:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 229
    :cond_3
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_4

    .line 230
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_ERASE:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 231
    :cond_4
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_5

    .line 232
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_SELECT:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 233
    :cond_5
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_6

    .line 234
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_TEXT:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 235
    :cond_6
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ARRANGE_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v9, v10, :cond_7

    .line 236
    sget v10, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_MOVE:I

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_7
    move-object/from16 v18, v1

    move-object v11, v6

    .line 239
    :goto_4
    new-instance v1, Lcom/metamoji/ui/UiHoverButton;

    iget-object v10, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_context:Landroid/content/Context;

    invoke-direct {v1, v10}, Lcom/metamoji/ui/UiHoverButton;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_8

    .line 241
    invoke-virtual {v7, v9}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v10

    .line 242
    invoke-virtual {v1, v10}, Lcom/metamoji/ui/UiHoverButton;->setEnabled(Z)V

    :cond_8
    int-to-float v10, v2

    div-float v10, v10, v16

    float-to-int v10, v10

    .line 245
    invoke-static {v9, v10, v10, v3}, Lcom/metamoji/ui/HoverCm;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v14, 0x0

    move-object v12, v9

    move-object v9, v10

    const v10, 0x3f4ccccd    # 0.8f

    move v13, v2

    move-object/from16 v19, v12

    move v12, v2

    move-object/from16 v2, v19

    .line 246
    invoke-static/range {v9 .. v14}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v10, 0x7f

    const/16 v11, 0xff

    .line 247
    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-static {v9, v10}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    move v11, v4

    .line 248
    invoke-static {v12, v12, v9, v3}, Lcom/metamoji/ui/HoverCm;->selectImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move v13, v12

    move-object v12, v2

    move v2, v13

    move v13, v3

    move-object v3, v9

    move v9, v5

    move-object v5, v10

    move-object/from16 v10, v18

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->setButtonImage(Lcom/metamoji/ui/UiHoverButton;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 251
    invoke-virtual {v1, v2, v2}, Lcom/metamoji/ui/UiHoverButton;->setSize(II)V

    .line 252
    invoke-virtual {v1, v13}, Lcom/metamoji/ui/UiHoverButton;->setVisibility(I)V

    if-ne v12, v10, :cond_9

    const/4 v3, 0x1

    .line 254
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/UiHoverButton;->setSelected(Z)V

    .line 256
    :cond_9
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/UiHoverButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {v1, v12}, Lcom/metamoji/ui/UiHoverButton;->setTag(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->addView(Landroid/view/View;)V

    add-int v17, v17, v2

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v4, v11, 0x1

    move-object v1, v10

    move v3, v13

    goto/16 :goto_2

    :cond_a
    move v9, v5

    .line 262
    iput v9, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_modeBtnCount:I

    .line 264
    iget-object v1, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v17

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 265
    iget-object v1, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_c

    iget-object v1, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_c

    iget-object v1, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_c

    iget-object v1, v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    return-void

    .line 266
    :cond_c
    :goto_5
    invoke-direct {v0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->makeSubPallet()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setButtonImage(Lcom/metamoji/ui/UiHoverButton;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 397
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 400
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 401
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 402
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, v0, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 403
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 404
    new-instance p5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p5, v0, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 405
    invoke-static {p4}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 406
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p4, v4, p2, p2}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v5, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p2, -0x10100a7

    const p4, 0x101009e

    const v0, -0x10100a1

    .line 409
    filled-new-array {p2, p4, v0}, [I

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x10100a7

    .line 410
    filled-new-array {v2, p4, v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p3, 0x10100a1

    .line 411
    filled-new-array {p2, p4, p3}, [I

    move-result-object v0

    invoke-virtual {v1, v0, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 412
    filled-new-array {v2, p4, p3}, [I

    move-result-object p3

    invoke-virtual {v1, p3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p3, -0x101009e

    .line 413
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-virtual {v1, p2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 416
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/UiHoverButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method OnShapePenModeButtonTapped()V
    .locals 2

    .line 555
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method init()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->makepallet()V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xd2

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 5

    .line 341
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 376
    :pswitch_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 377
    const-string v3, "MMJNtEraserSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtEraserSettings;

    .line 378
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result v0

    .line 380
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_NOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 382
    :cond_0
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_WIDE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v3, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-ne v0, p1, :cond_3

    return v1

    .line 365
    :pswitch_1
    const-string v0, "RubberBandKindIndex"

    .line 366
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 367
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_CONTAIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    :goto_1
    if-ne v0, p1, :cond_3

    return v1

    .line 348
    :pswitch_2
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 350
    const-string v3, "MMJNtPenSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 351
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    .line 352
    sget-object v3, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 353
    aget-object v0, v3, v0

    if-ne v0, p1, :cond_3

    return v1

    :cond_3
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 423
    instance-of v0, p1, Lcom/metamoji/ui/flexible/FxPalletButton;

    if-eqz v0, :cond_0

    .line 424
    move-object v1, p1

    check-cast v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object v1

    .line 426
    invoke-static {v1}, Lcom/metamoji/ui/flexible/FxManager;->isNotClosePopupMenuWhenExecCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_menubase:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 433
    :goto_0
    instance-of v1, p1, Lcom/metamoji/ui/UiHoverButton;

    const-string v2, "index"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 435
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->UNKNOWN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 436
    sget-object v4, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 462
    :pswitch_0
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_1

    .line 459
    :pswitch_1
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_1

    .line 456
    :pswitch_2
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_1

    .line 453
    :pswitch_3
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_1

    .line 450
    :pswitch_4
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_1

    .line 442
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 443
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_LASERPOINTER_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    .line 445
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_1

    .line 438
    :pswitch_6
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 468
    :goto_1
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->UNKNOWN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, p1, :cond_4

    .line 469
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 470
    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 474
    check-cast p1, Lcom/metamoji/ui/flexible/FxPalletButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object p1

    .line 475
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_3

    .line 530
    :pswitch_7
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->OnShapePenModeButtonTapped()V

    return-void

    .line 526
    :pswitch_8
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_TEXTUNIT_VERTICAL_WRITING:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 523
    :pswitch_9
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 520
    :pswitch_a
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_TOGGLE_IME_AND_MAZEC:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 517
    :pswitch_b
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_INPUTSTYLE_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 514
    :pswitch_c
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_SHOW_CONTEXT_MENU:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 511
    :pswitch_d
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_SMALLER:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 508
    :pswitch_e
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_BIGGER:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 492
    :pswitch_f
    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_THIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 493
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 494
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 501
    :pswitch_10
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 502
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 503
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTRUBBERBANDKIND:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 482
    :pswitch_11
    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 483
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 484
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_1

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 99
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v4, v1, v0

    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p2, 0x40800000    # 4.0f

    .line 110
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 111
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, p1, :cond_2

    .line 114
    iget v4, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_modeBtnCount:I

    if-ge v2, v4, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_1

    instance-of v3, v4, Lcom/metamoji/ui/UiHoverButton;

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v4

    check-cast v3, Lcom/metamoji/ui/UiHoverButton;

    .line 118
    invoke-virtual {v3}, Lcom/metamoji/ui/UiHoverButton;->get_layoutheight()F

    move-result v5

    float-to-int v5, v5

    .line 119
    invoke-virtual {v3}, Lcom/metamoji/ui/UiHoverButton;->get_layoutwidth()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v1

    add-int/2addr v5, v0

    .line 120
    invoke-virtual {v4, v1, v0, v3, v5}, Landroid/view/View;->layout(IIII)V

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42500000    # 52.0f

    .line 124
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 125
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    :goto_1
    if-ge v2, p1, :cond_4

    .line 127
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_3

    instance-of v4, v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    if-eqz v4, :cond_3

    .line 129
    move-object v4, v1

    check-cast v4, Lcom/metamoji/ui/flexible/FxPalletButton;

    .line 130
    invoke-virtual {v4}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_layoutheight()F

    move-result v5

    float-to-int v5, v5

    .line 131
    invoke-virtual {v4}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_layoutwidth()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, p2

    add-int/2addr v5, v0

    .line 132
    invoke-virtual {v1, p2, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    move p2, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 138
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_pallet:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->getChildCount()I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 144
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x42400000    # 48.0f

    .line 145
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    .line 146
    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_currentNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v4, :cond_1

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 149
    iget v4, p0, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->_modeBtnCount:I

    if-ge v3, v4, :cond_3

    .line 150
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 151
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 152
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    instance-of v5, v4, Lcom/metamoji/ui/UiHoverButton;

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const/16 v1, 0xa0

    const/16 v2, 0x50

    .line 164
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;->setMeasuredDimension(II)V

    return-void
.end method
