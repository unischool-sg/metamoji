.class public Lcom/metamoji/noteanytime/EditorActivityModeBarController;
.super Ljava/lang/Object;
.source "EditorActivityModeBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final _barsbackres:[I

.field final _barsid:[I

.field _editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

.field _modebarenable:Z

.field final barBtnDrawables:[I

.field final barBtnDrawablesShare:[I

.field final buttons:[I

.field final buttonsRes:[I

.field private m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field private m_currentSelection:I


# direct methods
.method static bridge synthetic -$$Nest$mmodeSelect(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->modeSelect(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetModeBarEnabled(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setModeBarEnabled(Z)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 11

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    .line 60
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_done:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->buttons:[I

    .line 65
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_done:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_newdoc:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->buttonsRes:[I

    .line 70
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->barBtnDrawables:[I

    .line 79
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view_share:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_share:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1_share:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser_share:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select_share:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text_share:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->barBtnDrawablesShare:[I

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_base:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar_base2:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->actionbar_left_sep:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->actionbar_right_sep:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsid:[I

    .line 97
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal2:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->actionbar_mode_back:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->actionbar_left_sep:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->actionbar_right_sep:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share2:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->actionbar_mode_back_share:I

    sget v9, Lcom/metamoji/noteanytime/R$drawable;->actionbar_left_sep_share:I

    sget v10, Lcom/metamoji/noteanytime/R$drawable;->actionbar_right_sep_share:I

    filled-new-array/range {v1 .. v10}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsbackres:[I

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentSelection:I

    .line 113
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 11

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    .line 60
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_done:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->buttons:[I

    .line 65
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_done:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_newdoc:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->buttonsRes:[I

    .line 70
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->barBtnDrawables:[I

    .line 79
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view_share:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pointer_share:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1_share:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser_share:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select_share:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text_share:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->barBtnDrawablesShare:[I

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_base:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar_base2:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->actionbar_left_sep:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->actionbar_right_sep:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsid:[I

    .line 97
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal2:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->actionbar_mode_back:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->actionbar_left_sep:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->actionbar_right_sep:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share2:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->actionbar_mode_back_share:I

    sget v9, Lcom/metamoji/noteanytime/R$drawable;->actionbar_left_sep_share:I

    sget v10, Lcom/metamoji/noteanytime/R$drawable;->actionbar_right_sep_share:I

    filled-new-array/range {v1 .. v10}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsbackres:[I

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentSelection:I

    .line 113
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 119
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    .line 120
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->init()V

    return-void
.end method

.method public static createModePenImage(IIIZZ)Landroid/graphics/Bitmap;
    .locals 11

    .line 615
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 619
    :cond_0
    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 620
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p2

    .line 622
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 623
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    div-float/2addr v0, v1

    int-to-float v1, p0

    div-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 628
    invoke-static {v1, v0, p2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->makeBaseImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 629
    invoke-static {v1, v0, p2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->makeMaskImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 631
    invoke-static {p2, p3}, Lcom/metamoji/ui/HoverCm;->getPenImageName(Lcom/metamoji/nt/share/NtPenStyle;Z)I

    move-result p2

    .line 634
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 635
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 636
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v7, -0x1

    .line 637
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 641
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 643
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/metamoji/ui/HoverCm;->createShapePenModeImage(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 644
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v0, v8, v8, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 645
    invoke-virtual {v4, p2, v0, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 648
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p2, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 649
    invoke-virtual {v4, v2, p2, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 650
    invoke-virtual {v4, v3, p2, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_1

    .line 654
    sget p2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_WRITE:I

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v7

    const v6, 0x3f4ccccd    # 0.8f

    move v8, p0

    move v9, p1

    move v10, p3

    .line 655
    invoke-static/range {v5 .. v10}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v5
.end method

.method private enableButton(IZ)V
    .locals 1

    .line 498
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 500
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 501
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private hidePallet()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->close()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setButtonImage()V

    .line 130
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    .line 136
    sget-object v2, Lcom/metamoji/noteanytime/EditorActivityModeBarController$3;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->ARRANGE:I

    goto :goto_0

    .line 150
    :pswitch_1
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    goto :goto_0

    .line 147
    :pswitch_2
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->TEXT:I

    goto :goto_0

    .line 144
    :pswitch_3
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->SELECT:I

    goto :goto_0

    .line 141
    :pswitch_4
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    goto :goto_0

    .line 138
    :pswitch_5
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->ERASER:I

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    :cond_1
    :goto_1
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

.method public static isMakeMaskImageForShareMode(IZ)Z
    .locals 1

    .line 276
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_voice_recording:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private isPhoneAndPortrait()Z
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isShare()Z
    .locals 1

    .line 917
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->isShare()Z

    move-result v0

    return v0
.end method

.method private static makeBaseImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;
    .locals 10

    .line 711
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 712
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 713
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 714
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 717
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getPenImageMaskName(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result p2

    .line 719
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 720
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 721
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 722
    invoke-virtual {v2, p2, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 723
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 725
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 726
    iget p0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v7, p0

    iget p0, v0, Lcom/metamoji/cm/Size;->height:I

    int-to-float v8, p0

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    const/16 p0, 0xff

    .line 727
    invoke-static {p0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 728
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 729
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private static makeMaskImage(IILcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;
    .locals 23

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 665
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    .line 666
    iget v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 667
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v5

    .line 668
    iget-object v6, v2, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 671
    new-instance v7, Lcom/metamoji/cm/Size;

    invoke-direct {v7, v0, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 672
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 673
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 674
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 677
    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getPenImageMaskName(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v2

    .line 679
    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 680
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 681
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 682
    invoke-virtual {v9, v2, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 683
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v5, :cond_0

    .line 684
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    if-le v2, v11, :cond_0

    const-string v2, "gradation"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 686
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 687
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 688
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    .line 690
    new-instance v1, Landroid/graphics/Point;

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-direct {v1, v2, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 691
    new-instance v2, Landroid/graphics/Point;

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v2, v0, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 692
    new-instance v15, Landroid/graphics/LinearGradient;

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 693
    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 694
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-object v8

    .line 696
    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 697
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 698
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 699
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 700
    iget v5, v7, Lcom/metamoji/cm/Size;->width:I

    int-to-float v14, v5

    iget v5, v7, Lcom/metamoji/cm/Size;->height:I

    int-to-float v15, v5

    sget-object v16, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 701
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 702
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 703
    invoke-virtual {v9, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v8
.end method

.method private modeSelect(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 9

    .line 511
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_2

    .line 512
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v0

    .line 513
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 514
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->unselectButton(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 516
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getAndroidId(Lcom/metamoji/nt/NtNoteController$NoteMode;)I

    move-result p1

    .line 517
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, p1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 519
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 520
    sget v3, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x42200000    # 40.0f

    .line 522
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int v4, p1

    .line 523
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v8, 0x0

    if-ne p1, v3, :cond_0

    .line 525
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->barBtnDrawables:[I

    aget v3, p1, v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v5, v4

    invoke-static/range {v2 .. v7}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    .line 526
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 527
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 531
    :cond_0
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    invoke-static {p1, v4, v4, v8, v1}, Lcom/metamoji/ui/HoverCm;->getImage(IIIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 532
    invoke-static {v2, p1, v4, v4, v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 534
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 538
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 540
    invoke-virtual {p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public static selectImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 339
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p3, :cond_0

    .line 345
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push_share:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 347
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-static {p3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 350
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    invoke-virtual {v1, p3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 357
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p3, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 359
    invoke-virtual {v1, p2, p3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-object v0
.end method

.method public static setEtc(Landroid/view/View;IIIZZ)V
    .locals 6

    .line 229
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_done:I

    if-ne p1, v0, :cond_0

    const/high16 p2, 0x42700000    # 60.0f

    .line 230
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    :cond_0
    move v3, p2

    .line 233
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 234
    invoke-static {p1, p4}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isMakeMaskImageForShareMode(IZ)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-ne v0, v1, :cond_1

    const/16 v0, 0xf0

    .line 235
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {p2, v0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b

    const/16 v1, 0x54

    const/16 v4, 0x45

    .line 237
    invoke-static {v2, v4, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {p2, v0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    move-object v0, p2

    if-eqz p5, :cond_d

    .line 243
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_done:I

    const p5, 0x3f4ccccd    # 0.8f

    if-ne p1, p2, :cond_2

    .line 244
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_CLOSE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v2, p1

    move v1, p5

    goto/16 :goto_5

    .line 245
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view:I

    if-ne p1, p2, :cond_3

    .line 246
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_VIEW:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 247
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    if-ne p1, p2, :cond_4

    .line 248
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_ERASE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 249
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select:I

    if-ne p1, p2, :cond_5

    .line 250
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_SELECT:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 251
    :cond_5
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text:I

    if-ne p1, p2, :cond_6

    .line 252
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_TEXT:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 253
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    if-ne p1, p2, :cond_7

    .line 254
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_MOVE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 255
    :cond_7
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_undo_share:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, p2, :cond_c

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_undo:I

    if-ne p1, p2, :cond_8

    goto :goto_3

    .line 258
    :cond_8
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_redo_share:I

    if-eq p1, p2, :cond_b

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_redo:I

    if-ne p1, p2, :cond_9

    goto :goto_2

    .line 261
    :cond_9
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share_offline:I

    if-ne p1, p2, :cond_a

    .line 263
    const-string p1, ""

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    goto :goto_1

    .line 259
    :cond_b
    :goto_2
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_REDO:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 256
    :cond_c
    :goto_3
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_UNDO:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v2, p1

    :goto_5
    if-eqz v2, :cond_d

    move v4, p3

    move v5, p4

    .line 268
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    :cond_d
    move v4, p3

    move v5, p4

    .line 271
    :goto_6
    invoke-static {p0, v0, v3, v4, v5}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V

    return-void
.end method

.method private setModeBarEnabled(Z)V
    .locals 4

    .line 925
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_4

    .line 927
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    .line 928
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 930
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 933
    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 934
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 936
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 940
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->hidePallet()V

    .line 942
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isEnabledStatusView()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 943
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 945
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 949
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isPhoneAndPortrait()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 951
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 952
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v0, Lcom/metamoji/noteanytime/R$id;->mode2infoview:I

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 953
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 954
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 957
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share:I

    goto :goto_3

    .line 955
    :cond_4
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share2:I

    goto :goto_3

    .line 960
    :cond_5
    iget-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-nez p1, :cond_7

    .line 962
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isEnabledStatusView()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 967
    :cond_6
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal:I

    goto :goto_3

    .line 965
    :cond_7
    :goto_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal2:I

    .line 970
    :goto_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar_base2:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 972
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method private setPenBtn(Landroid/widget/Button;IIZ)V
    .locals 2

    .line 215
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 218
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    iput v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentSelection:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentSelection:I

    .line 222
    :goto_0
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentSelection:I

    const/4 v1, 0x1

    invoke-static {p2, p3, v0, p4, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->createModePenImage(IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    invoke-static {p1, v0, p2, p3, p4}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V

    return-void
.end method

.method public static setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V
    .locals 4

    .line 285
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 291
    invoke-static {p2, p3, p1, p4}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->selectImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 292
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 293
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 294
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v2, p2, p3}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 296
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const p2, -0x10100a1

    const p3, -0x10100a7

    .line 297
    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v0, 0x10100a7

    .line 298
    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p2, 0x10100a1

    .line 299
    filled-new-array {p2, p3}, [I

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 300
    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private unselectButton(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 6

    .line 592
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getAndroidId(Lcom/metamoji/nt/NtNoteController$NoteMode;)I

    move-result p1

    .line 593
    sget-object v0, Lcom/metamoji/ui/HoverCm;->barBtns:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v5, v4}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 599
    invoke-virtual {v4}, Landroid/widget/Button;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setSelected(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method SelectPen(I)V
    .locals 2

    .line 549
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result p1

    .line 550
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42200000    # 40.0f

    .line 552
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 553
    invoke-direct {p0, v0, v1, v1, p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setPenBtn(Landroid/widget/Button;IIZ)V

    :cond_0
    return-void
.end method

.method UpdateLaser()V
    .locals 5

    .line 569
    sget v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    .line 574
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 576
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    const/high16 v2, 0x42200000    # 40.0f

    .line 582
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    .line 583
    sget v3, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v4

    invoke-static {v3, v2, v2, v4, v1}, Lcom/metamoji/ui/HoverCm;->getImage(IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 584
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v3

    invoke-static {v0, v1, v2, v2, v3}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V

    :cond_0
    return-void
.end method

.method UpdatePen(I)V
    .locals 2

    .line 558
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result p1

    .line 559
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42200000    # 40.0f

    .line 561
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 562
    invoke-direct {p0, v0, v1, v1, p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setPenBtn(Landroid/widget/Button;IIZ)V

    :cond_0
    return-void
.end method

.method public changeModeBarVisible(Z)V
    .locals 4

    .line 981
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-eqz v0, :cond_4

    .line 982
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 983
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 985
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view:I

    invoke-virtual {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    .line 988
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 989
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 992
    :cond_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 993
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 997
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 998
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->hidePallet()V

    .line 999
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1002
    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1003
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isEnabledStatusView()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1004
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 1006
    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public collaboModeChanged()V
    .locals 8

    .line 856
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsid:[I

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 860
    :goto_0
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsid:[I

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_b

    aget v5, v2, v4

    .line 861
    iget-object v6, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_barsbackres:[I

    aget v6, v6, v0

    .line 862
    sget v7, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    if-eq v5, v7, :cond_1

    sget v7, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view:I

    if-eq v5, v7, :cond_1

    sget v7, Lcom/metamoji/noteanytime/R$id;->mode2infoview:I

    if-ne v5, v7, :cond_2

    .line 868
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isPhoneAndPortrait()Z

    move-result v7

    if-nez v7, :cond_2

    move v6, v1

    .line 871
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isPhoneAndPortrait()Z

    move-result v7

    if-eqz v7, :cond_4

    sget v7, Lcom/metamoji/noteanytime/R$id;->actionbar_left_sep:I

    if-eq v5, v7, :cond_3

    sget v7, Lcom/metamoji/noteanytime/R$id;->actionbar_right_sep:I

    if-ne v5, v7, :cond_4

    :cond_3
    move v6, v1

    .line 874
    :cond_4
    sget v7, Lcom/metamoji/noteanytime/R$id;->actionbar_base2:I

    if-ne v5, v7, :cond_9

    iget-boolean v7, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-nez v7, :cond_9

    .line 877
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isEnabledStatusView()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v7

    if-nez v7, :cond_9

    .line 880
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isPhoneAndPortrait()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 881
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 882
    iget-object v6, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v7, Lcom/metamoji/noteanytime/R$id;->mode2infoview:I

    invoke-virtual {v6, v7}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 883
    iget-boolean v7, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-nez v7, :cond_7

    if-eqz v6, :cond_6

    .line 884
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    .line 887
    :cond_6
    sget v6, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share:I

    goto :goto_3

    .line 885
    :cond_7
    :goto_2
    sget v6, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share2:I

    goto :goto_3

    .line 890
    :cond_8
    sget v6, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_normal:I

    :cond_9
    :goto_3
    if-lez v6, :cond_a

    .line 894
    iget-object v7, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v7, v5}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_a

    .line 896
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 901
    :cond_b
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 902
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_title_text:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 904
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    .line 905
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_c
    const/16 v1, 0xff

    const/16 v2, 0xa

    .line 907
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 911
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setButtonImage()V

    return-void
.end method

.method public getCurrentBtn()I
    .locals 6

    .line 744
    sget-object v0, Lcom/metamoji/ui/HoverCm;->barBtns:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 745
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v5, v4}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 747
    invoke-virtual {v5}, Landroid/widget/Button;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEnabled()Z
    .locals 1

    .line 921
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    return v0
.end method

.method public mode2InfoText()Landroid/widget/TextView;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->mode2infotext:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method modeImage(III)Landroid/graphics/Bitmap;
    .locals 10

    .line 307
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 309
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 310
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 311
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 313
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 314
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 315
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 318
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 320
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 321
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    invoke-virtual {v3, v5, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 323
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    :cond_0
    invoke-static {v0, p3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 329
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v0, v6, v6, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    invoke-virtual {v3, p3, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 332
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v2
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 2

    .line 400
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController$2;-><init>(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Lcom/metamoji/nt/NtCommand;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V
    .locals 2

    .line 368
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController$1;-><init>(Lcom/metamoji/noteanytime/EditorActivityModeBarController;Lcom/metamoji/nt/NtCommand;I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 775
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isNotePrepared()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 779
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 780
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v3, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->getCurrentBtn()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getModeFormAndroidId(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 783
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 784
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    if-ne v1, p1, :cond_2

    .line 785
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_LASERPOINTER_STYLE:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 786
    :cond_2
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    if-ne v1, p1, :cond_3

    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 787
    :cond_3
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object p1

    .line 788
    invoke-virtual {p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object p1

    .line 789
    invoke-virtual {p1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->switchVisible()V

    .line 790
    invoke-virtual {p1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->isOpen()Z

    move-result p1

    .line 791
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 792
    const-string v1, "BarHoverPalletOpen"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    return-void

    .line 797
    :cond_4
    sget v2, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 798
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 799
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 800
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    .line 803
    :cond_5
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    const-string v2, "button"

    const-string v3, "index"

    if-ne v1, p1, :cond_6

    .line 804
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 805
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 808
    :cond_6
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    if-ne v1, p1, :cond_7

    .line 809
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 810
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 813
    :cond_7
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    if-ne v1, p1, :cond_8

    .line 814
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 815
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 816
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 817
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 818
    :cond_8
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->ERASER:I

    if-ne v1, p1, :cond_9

    .line 819
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 820
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 823
    :cond_9
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->SELECT:I

    if-ne v1, p1, :cond_a

    .line 824
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 825
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 826
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 828
    :cond_a
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->TEXT:I

    if-ne v1, p1, :cond_b

    .line 829
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 830
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 833
    :cond_b
    sget p1, Lcom/metamoji/ui/HoverCm$BarBtnId;->ARRANGE:I

    if-ne v1, p1, :cond_c

    .line 834
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 835
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_c
    :goto_0
    return-void
.end method

.method public resumeEtc(ZZ)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v1

    if-nez p1, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->showShowBarBtn()V

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->getCurrentBtn()I

    move-result v0

    .line 764
    invoke-virtual {v1, v0, p2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->resume(IZ)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 766
    invoke-virtual {v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->open()V

    :cond_1
    return-void
.end method

.method setButtonImage()V
    .locals 13

    .line 169
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v4

    const/high16 v0, 0x42200000    # 40.0f

    .line 170
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v2, v0

    .line 173
    sget-object v6, Lcom/metamoji/ui/HoverCm;->barBtns:[I

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v9, v7, :cond_4

    aget v11, v6, v9

    .line 174
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0, v11}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 176
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    if-ne v11, v1, :cond_0

    .line 177
    invoke-direct {p0, v0, v2, v2, v4}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setPenBtn(Landroid/widget/Button;IIZ)V

    goto :goto_1

    .line 178
    :cond_0
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    if-ne v11, v1, :cond_1

    const/4 v1, 0x1

    .line 180
    invoke-static {v11, v2, v2, v4, v1}, Lcom/metamoji/ui/HoverCm;->getImage(IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    invoke-static {v0, v1, v2, v2, v4}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V

    goto :goto_1

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->barBtnDrawables:[I

    aget v1, v1, v10

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    .line 187
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    if-ne v11, v1, :cond_2

    .line 188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 192
    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 198
    :cond_4
    iget-object v6, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->buttons:[I

    array-length v7, v6

    move v9, v8

    :goto_2
    if-ge v8, v7, :cond_7

    aget v0, v6, v8

    .line 199
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 201
    sget v3, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_share:I

    if-ne v0, v3, :cond_5

    .line 202
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_collabo:I

    goto :goto_3

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->buttonsRes:[I

    aget v0, v0, v9

    :goto_3
    const/4 v5, 0x1

    move v3, v2

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 206
    invoke-static/range {v0 .. v5}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public updateButtonState()V
    .locals 3

    .line 491
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 493
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->enableButton(IZ)V

    .line 494
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setModeBarEnabled(Z)V

    return-void
.end method

.method public updateMode2InfoView()V
    .locals 3

    .line 466
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isShare()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->mode2infoview:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->mode2InfoText()Landroid/widget/TextView;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 473
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->actionbar_base2:I

    invoke-virtual {v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 478
    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_modebarenable:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 481
    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share:I

    goto :goto_3

    .line 479
    :cond_4
    :goto_2
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->actionbar_back_share2:I

    .line 483
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method updateStatusLabel()V
    .locals 6

    .line 432
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 433
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 434
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v3, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view:I

    invoke-virtual {v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 435
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->_editorActivity:Lcom/metamoji/noteanytime/EditorActivity;

    sget v4, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view_text:I

    invoke-virtual {v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 436
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_2

    .line 437
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v4, :cond_2

    const/4 v0, 0x0

    .line 438
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 452
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 447
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CAN_NOT_EDIT_CLASS_PAGE_IF_OFFLINE:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 444
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CAN_NOT_EDIT_GROUP_PAGE_IF_OFFLINE:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 456
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
