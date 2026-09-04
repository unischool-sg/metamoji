.class public Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;
.super Ljava/lang/Object;
.source "NtJumpLocationSettingSupport.java"

# interfaces
.implements Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$IRubberBandSupportCallback;
    }
.end annotation


# static fields
.field static LOCATION_ADD:I = 0x65

.field static LOCATION_CANCEL:I = 0x64


# instance fields
.field _note:Lcom/metamoji/nt/NtNoteController;

.field _point:Landroid/graphics/PointF;

.field _rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

.field _size:Lcom/metamoji/cm/SizeF;

.field m_aspect:I

.field m_beforNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field m_contextEnable:Z


# direct methods
.method static bridge synthetic -$$Nest$mhandleOnSelect(Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->handleOnSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/metamoji/cm/SizeF;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    .line 111
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_note:Lcom/metamoji/nt/NtNoteController;

    return-void
.end method

.method private appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            ")V"
        }
    .end annotation

    .line 505
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 508
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 510
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->convertRectToScreen(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 517
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 518
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 521
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JUMP_LOCATION_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-static {v0, p1, p2, v1}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method private handleOnSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 475
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 476
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 477
    sget p2, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->LOCATION_CANCEL:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 478
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_contextEnable:Z

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->end()V

    .line 480
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_EXIT_JUMP_SETTING_MODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 482
    :cond_0
    sget p2, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->LOCATION_ADD:I

    if-ne p1, p2, :cond_1

    .line 483
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_contextEnable:Z

    .line 484
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->end()V

    .line 485
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_EXIT_JUMP_SETTING_MODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v0, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 489
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object p1

    .line 490
    iget p2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    add-int/lit8 p2, p2, 0x1

    new-instance p3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v3, v4

    invoke-direct {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->addJump(ILandroid/graphics/RectF;Lcom/metamoji/nt/NtLinkJump$Type;)V

    return-void

    .line 492
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 493
    const-string p3, "jumpLocationSettingAspect"

    invoke-virtual {p2, p3, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 494
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->chgAspect(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public begin(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 3

    .line 121
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 122
    const-string v1, "jumpLocationSettingAspect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 124
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    :cond_0
    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_contextEnable:Z

    .line 128
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_beforNoteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 130
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 134
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 135
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->calcRubberRect(Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->convertRectToViewPort(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 138
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 139
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 140
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 142
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    if-nez p1, :cond_1

    .line 143
    new-instance p1, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    invoke-direct {p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    .line 144
    invoke-virtual {p1, p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->setSelectRubberBand(Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$IUnSelectRubberBandProc;)V

    .line 145
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    sget-object v0, Lcom/metamoji/rb/RbConstants$Activity;->HANDLES_TO_RESIZE:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->setHandleVisibility(Lcom/metamoji/rb/RbConstants$Activity;)V

    .line 146
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->setDefaultRubberBandStyle()V

    .line 147
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->contextShowDelay()V

    return-void
.end method

.method calcRubberRect(Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;
    .locals 8

    .line 317
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 318
    iget v2, p1, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v2, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v3, v2, v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    mul-float v5, v0, v4

    div-float/2addr v5, v1

    .line 321
    iget v6, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v1, 0x2

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v7, 0x41800000    # 16.0f

    if-eq v6, v1, :cond_1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-float v1, v2, v4

    div-float v3, v1, v7

    mul-float/2addr v7, v0

    div-float v5, v7, v4

    goto :goto_0

    :cond_1
    mul-float v1, v2, v7

    div-float v3, v1, v4

    mul-float/2addr v4, v0

    div-float v5, v4, v7

    goto :goto_0

    :cond_2
    mul-float v3, v2, v4

    div-float/2addr v3, v1

    mul-float/2addr v1, v0

    div-float v5, v1, v4

    :goto_0
    cmpl-float v1, v3, v0

    if-lez v1, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v0, v3

    .line 345
    :goto_1
    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 346
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    .line 347
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v0, v1

    add-float/2addr v2, p1

    invoke-direct {v3, v1, p1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method chgAspect(I)V
    .locals 10

    .line 266
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    if-ne v0, p1, :cond_0

    return-void

    .line 269
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    .line 270
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 271
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 272
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 273
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p1, v3

    add-float/2addr v1, v4

    div-float v4, v0, v3

    add-float/2addr v2, v4

    add-float v4, p1, v0

    .line 278
    iget v5, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40e00000    # 7.0f

    if-eqz v5, :cond_4

    const/4 v9, 0x1

    if-eq v5, v9, :cond_3

    const/4 v6, 0x2

    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41c80000    # 25.0f

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    mul-float/2addr v7, v4

    div-float p1, v7, v9

    mul-float/2addr v4, v8

    goto :goto_0

    :cond_2
    mul-float/2addr v8, v4

    div-float p1, v8, v9

    mul-float/2addr v4, v7

    :goto_0
    div-float v0, v4, v9

    goto :goto_2

    :cond_3
    mul-float/2addr v6, v4

    div-float p1, v6, v8

    mul-float/2addr v4, v7

    goto :goto_1

    :cond_4
    mul-float/2addr v7, v4

    div-float p1, v7, v8

    mul-float/2addr v4, v6

    :goto_1
    div-float v0, v4, v8

    .line 302
    :goto_2
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iput p1, v4, Lcom/metamoji/cm/SizeF;->width:F

    .line 303
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    iput v0, v4, Lcom/metamoji/cm/SizeF;->height:F

    .line 304
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 305
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 309
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    return-void
.end method

.method public contextShowDelay()V
    .locals 4

    .line 399
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_contextEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 403
    new-instance v1, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$1;-><init>(Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method convertRectToScreen(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .line 374
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 377
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v0

    .line 378
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    .line 379
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, v0

    .line 380
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v0

    .line 383
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v1, v2

    add-float/2addr p1, v3

    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 384
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 385
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/metamoji/noteanytime/R$id;->editing_area:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 387
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 388
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 390
    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 391
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method convertRectToViewPort(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .line 356
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v0

    .line 361
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 362
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 363
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v0

    .line 364
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v0

    .line 365
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v3, v2

    add-float/2addr p1, v1

    invoke-direct {v0, v2, v1, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public end()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->disposeRubberBand()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    :cond_0
    return-void
.end method

.method public getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_note:Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method public get_point()Landroid/graphics/PointF;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public get_size()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 237
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public hitTestRubberBand(Lcom/metamoji/rb/RbRubberBandAction;Landroid/graphics/PointF;)Lcom/metamoji/rb/RbConstants$Activity;
    .locals 0

    .line 206
    invoke-virtual {p1}, Lcom/metamoji/rb/RbRubberBandAction;->activity()Lcom/metamoji/rb/RbConstants$Activity;

    move-result-object p1

    return-object p1
.end method

.method public localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 232
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public notifyInBoundsTapped(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public notifyOutOfBoundsTapped(Landroid/graphics/PointF;)V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->contextShowDelay()V

    return-void
.end method

.method public rubberBandChanged(Lcom/metamoji/df/controller/GeometricProps;)Z
    .locals 1

    .line 185
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    .line 188
    :cond_0
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v0, :cond_1

    .line 189
    iget-object p1, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public set_point(Landroid/graphics/PointF;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_point:Landroid/graphics/PointF;

    return-void
.end method

.method public set_size(Lcom/metamoji/cm/SizeF;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_size:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method showContextMenu()V
    .locals 7

    .line 415
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_contextEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->m_aspect:I

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v3}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    const/4 v4, 0x0

    .line 424
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 425
    iput v4, v3, Lcom/metamoji/ui/UiMenuItem;->tag:I

    .line 426
    sget v5, Lcom/metamoji/noteanytime/R$string;->JumpLocation_4_3:I

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    if-nez v0, :cond_1

    .line 427
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_0
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 428
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v3}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    const/4 v5, 0x1

    .line 432
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 433
    sget v6, Lcom/metamoji/noteanytime/R$string;->JumpLocation_3_4:I

    invoke-virtual {v3, v6}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    if-ne v0, v5, :cond_2

    .line 434
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_1
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 435
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v3}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    const/4 v5, 0x2

    .line 439
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 440
    sget v6, Lcom/metamoji/noteanytime/R$string;->JumpLocation_16_9:I

    invoke-virtual {v3, v6}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    if-ne v0, v5, :cond_3

    .line 441
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_2
    invoke-virtual {v3, v5}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 442
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v3}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    const/4 v5, 0x3

    .line 446
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 447
    sget v6, Lcom/metamoji/noteanytime/R$string;->JumpLocation_9_16:I

    invoke-virtual {v3, v6}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    if-ne v0, v5, :cond_4

    .line 448
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_3
    invoke-virtual {v3, v0}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 449
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget v3, Lcom/metamoji/noteanytime/R$string;->JumpLocation_AspectRetio:I

    invoke-direct {v0, v2, v3, v4, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 452
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget v2, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->LOCATION_CANCEL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->JumpLocation_Cancel:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 455
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget v2, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->LOCATION_ADD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->JumpLocation_Regist:I

    invoke-direct {v0, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 458
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$2;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$2;-><init>(Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;)V

    .line 468
    invoke-direct {p0, v1, v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->_rubberBand:Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;->updateRubberBand()V

    :cond_0
    return-void
.end method

.method public viewportToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 246
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 251
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 253
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 254
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method
