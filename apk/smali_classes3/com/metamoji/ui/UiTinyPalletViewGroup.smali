.class public Lcom/metamoji/ui/UiTinyPalletViewGroup;
.super Landroid/view/ViewGroup;
.source "UiTinyPalletViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static eraser:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static select:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static textpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static textpallet2:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static viewpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static voice:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;


# instance fields
.field final MARGIN_B:I

.field final MARGIN_L:I

.field final MARGIN_R:I

.field final MARGIN_T:I

.field final SHADOW_DX:I

.field final SHADOW_DY:I

.field _anchor:Landroid/graphics/Rect;

.field _blur:Landroid/graphics/BlurMaskFilter;

.field _context:Landroid/content/Context;

.field _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field _paint:Landroid/graphics/Paint;

.field _paintShadow:Landroid/graphics/Paint;

.field _pallet:Landroid/graphics/Rect;

.field _path:Landroid/graphics/Path;

.field _tmpRect:Landroid/graphics/Rect;

.field m_anchor:Landroid/view/View;

.field m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field m_enabled:Z

.field m_indexSub:I

.field m_needlayout:Z

.field m_show:Z

.field m_voiceAnchor:Landroid/view/View;

.field m_voicePallet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    .line 336
    new-array v1, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PALLET_REC_STOP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PALLET_PLAY_PAUSE_INDEX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PALLET_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/metamoji/ui/UiTinyPalletViewGroup;->voice:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v1, 0x5

    .line 337
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX1:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX2:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX3:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX4:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v7, 0x4

    aput-object v6, v2, v7

    sput-object v2, Lcom/metamoji/ui/UiTinyPalletViewGroup;->pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 338
    new-array v2, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_CONTAIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sput-object v2, Lcom/metamoji/ui/UiTinyPalletViewGroup;->select:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 339
    new-array v2, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_THIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_NOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_WIDE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_CLEAR_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sput-object v2, Lcom/metamoji/ui/UiTinyPalletViewGroup;->eraser:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 340
    new-array v2, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIEW_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LASER_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sput-object v2, Lcom/metamoji/ui/UiTinyPalletViewGroup;->viewpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 341
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_PLUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MINUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_CONTEXT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v7

    sput-object v2, Lcom/metamoji/ui/UiTinyPalletViewGroup;->textpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v2, 0x7

    .line 342
    new-array v2, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_PLUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MINUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v4

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v5

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_CONTEXT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v0

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v7

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v1

    const/4 v0, 0x6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_UNIT_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v2, v0

    sput-object v2, Lcom/metamoji/ui/UiTinyPalletViewGroup;->textpallet2:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V
    .locals 3

    .line 87
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->SHADOW_DX:I

    .line 58
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->SHADOW_DY:I

    .line 59
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->MARGIN_L:I

    .line 60
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->MARGIN_T:I

    const/16 v0, 0x8

    .line 61
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->MARGIN_R:I

    .line 62
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->MARGIN_B:I

    .line 66
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_indexSub:I

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_needlayout:Z

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_tmpRect:Landroid/graphics/Rect;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paintShadow:Landroid/graphics/Paint;

    .line 273
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    const/4 v1, 0x1

    .line 274
    iput-boolean v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    .line 916
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    const/4 v2, 0x0

    .line 917
    iput-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voiceAnchor:Landroid/view/View;

    .line 88
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setWillNotDraw(Z)V

    .line 90
    iput-object p2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 91
    iput-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_context:Landroid/content/Context;

    return-void
.end method

.method public static getPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;
    .locals 1

    .line 722
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 725
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private makepallet()V
    .locals 10

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_needlayout:Z

    .line 472
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    .line 473
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    float-to-int v1, v1

    .line 475
    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    .line 476
    iget-boolean v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    .line 477
    iput v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_indexSub:I

    .line 478
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->voice:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v4, :cond_1

    .line 480
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 481
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v4, :cond_2

    .line 482
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->eraser:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 483
    :cond_2
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v4, :cond_3

    .line 484
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->select:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 485
    :cond_3
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v4, :cond_5

    .line 486
    sget-boolean v3, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v3, :cond_4

    .line 487
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->textpallet2:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 489
    :cond_4
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->textpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 490
    :cond_5
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v4, :cond_7

    .line 491
    :cond_6
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->viewpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_14

    .line 494
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    move v0, v4

    .line 496
    :goto_1
    array-length v1, v3

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v5, v1, :cond_11

    aget-object v7, v3, v5

    .line 497
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_CLEAR_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_9

    .line 498
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 499
    invoke-virtual {v8}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v8

    if-eqz v8, :cond_f

    goto/16 :goto_3

    .line 503
    :cond_9
    sget-object v8, Lcom/metamoji/ui/UiTinyPalletViewGroup;->textpallet:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v8, :cond_b

    .line 504
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_a

    sget-object v8, Lcom/metamoji/noteanytime/BuildConfig;->EMBEDDING_MAZEC:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_3

    .line 506
    :cond_a
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_f

    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_3

    .line 510
    :cond_b
    sget-object v8, Lcom/metamoji/ui/UiTinyPalletViewGroup;->textpallet2:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v8, :cond_f

    if-eqz v0, :cond_e

    .line 512
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_MAZEC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_c

    sget-object v8, Lcom/metamoji/noteanytime/BuildConfig;->EMBEDDING_MAZEC:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_3

    .line 514
    :cond_c
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_d

    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_3

    .line 516
    :cond_d
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v7, v8, :cond_f

    goto :goto_3

    .line 522
    :cond_e
    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_PALLET_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v7, v8, :cond_f

    goto :goto_3

    .line 527
    :cond_f
    new-instance v8, Lcom/metamoji/ui/flexible/FxPalletButton;

    iget-object v9, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_context:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/metamoji/ui/flexible/FxPalletButton;-><init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 528
    invoke-virtual {p0, v8, v7}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 529
    invoke-virtual {v8, v2, v2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSize(II)V

    .line 530
    invoke-virtual {v8, v4}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    .line 531
    invoke-virtual {v8, p0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    invoke-virtual {p0, v7}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSelected(Z)V

    .line 533
    invoke-virtual {p0, v8}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    .line 536
    invoke-static {v7}, Lcom/metamoji/ui/flexible/FxManager;->getNtCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v7

    .line 537
    sget-object v9, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    if-eq v7, v9, :cond_10

    .line 538
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v7

    .line 539
    invoke-virtual {v8, v7}, Lcom/metamoji/ui/flexible/FxPalletButton;->setEnabled(Z)V

    :cond_10
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 545
    :cond_11
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-nez v0, :cond_13

    .line 546
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAPE_PEN_MODECHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 547
    new-instance v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_context:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/metamoji/ui/flexible/FxPalletButton;-><init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 548
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 549
    invoke-virtual {v1, v2, v2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSize(II)V

    .line 551
    invoke-virtual {v1, p0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSelected(Z)V

    .line 553
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->addView(Landroid/view/View;)V

    .line 554
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->isShapePenModeButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 555
    invoke-virtual {v1, v4}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_12
    const/16 v0, 0x8

    .line 558
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    :cond_13
    :goto_4
    mul-int v1, v2, v6

    goto :goto_5

    .line 564
    :cond_14
    iput-boolean v4, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    .line 566
    :goto_5
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private relayout()V
    .locals 5

    .line 252
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_needlayout:Z

    if-eqz v0, :cond_1

    .line 253
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voiceAnchor:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_anchor:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 256
    invoke-static {v1, v0, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setLayout(II)V

    .line 259
    iput-boolean v4, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_needlayout:Z

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->reLayout()V

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    .line 267
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->reLayoutTinyPallet()V

    :cond_1
    return-void
.end method

.method private setNoFocusBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 595
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 597
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 598
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 599
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p3, 0x10100a7

    .line 601
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p2, -0x10100a7

    .line 602
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 604
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 573
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 574
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_selection:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 576
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 577
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 578
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 579
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2, v1}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v5, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 580
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p3, v1}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p3, 0x101009e

    const v1, 0x10100a7

    const v6, -0x10100a1

    .line 582
    filled-new-array {p3, v1, v6}, [I

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v4, -0x10100a7

    .line 583
    filled-new-array {p3, v4, v6}, [I

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, 0x10100a1

    .line 584
    filled-new-array {p3, v4, v3}, [I

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 585
    filled-new-array {p3, v1, v3}, [I

    move-result-object p3

    invoke-virtual {v2, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_0

    .line 587
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p3, -0x101009e

    .line 588
    filled-new-array {p3, v4, v6}, [I

    move-result-object p3

    invoke-virtual {v2, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 591
    :cond_0
    invoke-virtual {p1, v2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 713
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 716
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 717
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method ExecCommandWithIndex(Lcom/metamoji/nt/NtCommand;I)V
    .locals 2

    .line 707
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 708
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method OnShapePenModeButtonTapped()V
    .locals 2

    .line 1053
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public calcMyLayout(Landroid/graphics/Rect;)V
    .locals 6

    .line 216
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 222
    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 223
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 225
    iget-object v4, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 226
    iget-object v4, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_1

    .line 227
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    .line 229
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_2

    .line 230
    iget v2, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    if-ge v3, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 240
    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 241
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 242
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 243
    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 245
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 246
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 247
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 248
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_1
    return-void
.end method

.method public close()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->hide()V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    return-void
.end method

.method getVoiceAnchor()Landroid/view/View;
    .locals 1

    .line 850
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->getVoiceAnchor()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoicePalletShown()Z
    .locals 1

    .line 1013
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    return v0
.end method

.method hasPallet(Lcom/metamoji/nt/NtNoteController$NoteMode;)Z
    .locals 2

    .line 319
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p1, v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 332
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method hidePallet()V
    .locals 1

    const/4 v0, 0x4

    .line 934
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method init()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xec

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_blur:Landroid/graphics/BlurMaskFilter;

    .line 101
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paintShadow:Landroid/graphics/Paint;

    const/16 v1, 0xa5

    const/16 v2, 0x8c

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paintShadow:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_blur:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    .line 106
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    return v0
.end method

.method isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 5

    .line 347
    sget-object v0, Lcom/metamoji/ui/UiTinyPalletViewGroup$3;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 392
    :pswitch_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 393
    const-string v3, "MMJNtEraserSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtEraserSettings;

    .line 394
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result v0

    .line 396
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_NOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 398
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

    .line 381
    :pswitch_1
    const-string v0, "RubberBandKindIndex"

    .line 382
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 383
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_CONTAIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    :goto_1
    if-ne v0, p1, :cond_3

    return v1

    .line 364
    :pswitch_2
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 366
    const-string v3, "MMJNtPenSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 367
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    .line 368
    sget-object v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;->pens:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 369
    aget-object v0, v3, v0

    if-ne v0, p1, :cond_3

    return v1

    .line 354
    :pswitch_3
    iget-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p1, v0, :cond_3

    return v1

    .line 349
    :pswitch_4
    iget-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
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

.method isShowBar()Z
    .locals 3

    .line 991
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 995
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 996
    sget v2, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBar;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method isVisibleRestriction()Z
    .locals 1

    .line 980
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isShowBar()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method layoutPallet()V
    .locals 1

    const/4 v0, 0x1

    .line 974
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_needlayout:Z

    .line 975
    invoke-direct {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->relayout()V

    return-void
.end method

.method public notifyEnableCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Z)V
    .locals 3

    .line 801
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 802
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    .line 803
    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 804
    invoke-virtual {v1, p2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V
    .locals 2

    .line 750
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;-><init>(Lcom/metamoji/ui/UiTinyPalletViewGroup;Lcom/metamoji/nt/NtCommand;I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 610
    instance-of v0, p1, Lcom/metamoji/ui/flexible/FxPalletButton;

    if-eqz v0, :cond_2

    .line 611
    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/flexible/FxPalletButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object v0

    .line 612
    sget-object v1, Lcom/metamoji/ui/UiTinyPalletViewGroup$3;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "index"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 694
    :pswitch_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 696
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object p1

    .line 697
    invoke-virtual {p1, v0, v3, v3, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void

    .line 666
    :pswitch_1
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_TEXTUNIT_VERTICAL_WRITING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 663
    :pswitch_2
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_NOTE_SETTINGS_VERTICAL_WRITING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 660
    :pswitch_3
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_TOGGLE_IME_AND_MAZEC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 657
    :pswitch_4
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_INPUTSTYLE_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 654
    :pswitch_5
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_SHOW_CONTEXT_MENU:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 651
    :pswitch_6
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_SMALLER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 648
    :pswitch_7
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_BIGGER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 645
    :pswitch_8
    invoke-static {}, Lcom/metamoji/ui/HoverSelectorView;->pageClearWithMessage()V

    return-void

    .line 690
    :pswitch_9
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->OnShapePenModeButtonTapped()V

    return-void

    .line 629
    :pswitch_a
    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ERASER_THIN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 630
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 631
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 638
    :pswitch_b
    sget-object p1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_OVERLAP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 639
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 640
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTRUBBERBANDKIND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 619
    :pswitch_c
    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 620
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 621
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 678
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 679
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_LASERPOINTER_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 681
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 682
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 670
    :pswitch_e
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 671
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->reLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 156
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voiceAnchor:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_anchor:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 159
    invoke-static {v2, v0, v3}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_anchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setLayout(II)V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 167
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 168
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 169
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 170
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v3, v4

    :cond_2
    add-int/2addr v2, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const/16 v2, 0xa0

    const/16 v3, 0x50

    .line 185
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public open()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->hasPallet(Lcom/metamoji/nt/NtNoteController$NoteMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->show()V

    :cond_0
    return-void
.end method

.method reLayout()V
    .locals 7

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    float-to-int v1, v1

    .line 140
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 143
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    instance-of v5, v4, Lcom/metamoji/ui/flexible/FxPalletButton;

    if-eqz v5, :cond_1

    .line 145
    move-object v5, v4

    check-cast v5, Lcom/metamoji/ui/flexible/FxPalletButton;

    .line 146
    invoke-virtual {v5}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_layoutheight()F

    move-result v6

    float-to-int v6, v6

    .line 147
    invoke-virtual {v5}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_layoutwidth()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v2

    add-int/2addr v6, v1

    .line 148
    invoke-virtual {v4, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public resume(IZ)V
    .locals 3

    .line 818
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->init()V

    if-nez p1, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 824
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getModeFormAndroidId(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 826
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->hasPallet(Lcom/metamoji/nt/NtNoteController$NoteMode;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 827
    :cond_2
    :goto_0
    const-string v1, "BarHoverPalletOpen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 829
    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    if-eqz p2, :cond_3

    .line 831
    iput-boolean p2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    .line 833
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_anchor:Landroid/view/View;

    .line 834
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/UiTinyPalletViewGroup$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup$2;-><init>(Lcom/metamoji/ui/UiTinyPalletViewGroup;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    .line 414
    sget-object v1, Lcom/metamoji/ui/UiTinyPalletViewGroup$3;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p2}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 460
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result p2

    int-to-float v0, v0

    .line 461
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v1}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 462
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    invoke-static {p2, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 421
    :pswitch_0
    invoke-virtual {p2}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p2

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PEN_INDEX0:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float v0, v0

    .line 422
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v1}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/metamoji/ui/HoverSelector;->CreatePenButton(IFF)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 423
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    invoke-static {p2, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 430
    :pswitch_1
    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v1}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v1

    invoke-static {p2, v3, v0, v1}, Lcom/metamoji/ui/HoverCm;->CreatePalletBtn(Lcom/metamoji/nt/NtNoteController$NoteMode;IFF)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 431
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    invoke-static {p2, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 433
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 450
    :cond_0
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    .line 451
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 452
    const-string v1, "forSchoolShapePenMode"

    invoke-virtual {p2, v1, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p2

    int-to-float v0, v0

    .line 453
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v1}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/metamoji/ui/HoverSelector;->CreateShapePenButton(FFZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 454
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    invoke-static {p2, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 438
    :cond_1
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v1

    int-to-float v0, v0

    .line 439
    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 440
    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 441
    invoke-static {v1, v2}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 442
    invoke-static {p2, v3}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Z)I

    move-result p2

    .line 443
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v3}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v3

    invoke-static {p2, v0, v3}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 444
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setLayout(II)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setLayoutSub()V

    return-void
.end method

.method setLayoutSub()V
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    .line 206
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 207
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 209
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 210
    iget-object v3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 211
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public setNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;Landroid/view/View;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_anchor:Landroid/view/View;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    iput-object p2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_anchor:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 739
    iput-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 740
    iget-boolean p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 741
    iput-boolean p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateDetailView()V

    .line 744
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateViewAfter()V

    :cond_2
    :goto_0
    return-void
.end method

.method setShow()V
    .locals 1

    .line 945
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 946
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->voicePalletShow(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    .line 948
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    .line 949
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->showPallet()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 297
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 301
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBar;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    .line 309
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->hasPallet(Lcom/metamoji/nt/NtNoteController$NoteMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 313
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method showPallet()V
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 941
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method public switchVisible()V
    .locals 2

    .line 953
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 954
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->voicePalletShow(Landroid/view/View;)V

    return-void

    .line 957
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isVisibleRestriction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 961
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    .line 963
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void

    .line 965
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    const/16 v0, 0x8

    .line 966
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method update2()V
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->init()V

    const/16 v0, 0x8

    .line 863
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    .line 864
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->removeAllViews()V

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    .line 866
    invoke-direct {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->makepallet()V

    .line 867
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateViewAfter()V

    return-void
.end method

.method public updateDetailView()V
    .locals 0

    .line 810
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->update2()V

    return-void
.end method

.method updatePenImage(I)V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 889
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne v0, p1, :cond_1

    .line 891
    iget-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p1

    float-to-int p1, p1

    .line 892
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    int-to-float p1, p1

    .line 893
    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2}, Lcom/metamoji/ui/menu/MenuUtils;->get_density()F

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/metamoji/ui/HoverSelector;->CreatePenButton(IFF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 894
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 895
    invoke-static {p1, v0}, Lcom/metamoji/ui/HoverSelector;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 896
    invoke-direct {p0, v1, p1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setPenBtn(Lcom/metamoji/ui/flexible/FxPalletButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method updateShapePenModeButton()V
    .locals 7

    .line 1024
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 1025
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v0

    .line 1026
    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    float-to-int v1, v1

    .line 1027
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAPE_PEN_MODECHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x0

    move v4, v3

    .line 1028
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1029
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1030
    instance-of v6, v5, Lcom/metamoji/ui/flexible/FxPalletButton;

    if-eqz v6, :cond_1

    .line 1031
    check-cast v5, Lcom/metamoji/ui/flexible/FxPalletButton;

    .line 1032
    invoke-virtual {v5}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object v6

    if-ne v6, v2, :cond_1

    .line 1033
    invoke-virtual {p0, v5, v2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setBitmap(Lcom/metamoji/ui/flexible/FxPalletButton;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 1034
    invoke-virtual {v5, v1, v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSize(II)V

    .line 1035
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->isShapePenModeButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    invoke-virtual {v5, v3}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    .line 1039
    invoke-virtual {v5, v2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1047
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->_pallet:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1048
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setLayoutSub()V

    return-void
.end method

.method updateStatus()V
    .locals 3

    const/4 v0, 0x0

    .line 907
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 908
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 909
    instance-of v2, v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    if-eqz v2, :cond_0

    .line 910
    check-cast v1, Lcom/metamoji/ui/flexible/FxPalletButton;

    .line 911
    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxPalletButton;->get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setSelected(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateViewAfter()V
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isVisibleRestriction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_show:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_enabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 873
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_needlayout:Z

    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 877
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method public voicePalletShow(Landroid/view/View;)V
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 924
    iput-boolean p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 926
    iput-boolean v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    .line 927
    iput-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voiceAnchor:Landroid/view/View;

    .line 929
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateDetailView()V

    return-void
.end method
