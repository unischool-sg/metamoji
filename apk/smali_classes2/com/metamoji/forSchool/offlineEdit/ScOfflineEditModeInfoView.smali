.class public Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ScOfflineEditModeInfoView.java"


# static fields
.field private static final EDIT_LAYER_PANEL_HEIGHT:I = 0x20

.field private static final LABEL_FONT_SIZE:I = 0xb

.field private static final MARGIN_X:I = 0xf

.field private static final MARGIN_Y:I = 0xf

.field private static final PANEL_HEIGHT:I = 0x1c

.field public static final PANEL_MARGIN_LEFT:I = 0xa

.field public static final PANEL_MARGIN_TOP:I = 0xa

.field private static final PANEL_WIDTH:I = 0x8c


# instance fields
.field private _rightMargin:I

.field private _topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_topMargin:I

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 49
    sget v0, Lcom/metamoji/noteanytime/R$color;->black:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setTextColor(I)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 50
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 51
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setGravity(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 52
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setPadding(IIII)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setClickable(Z)V

    .line 54
    new-instance p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setLayout()V

    const/4 p1, 0x4

    .line 63
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setVisibility(I)V

    return-void
.end method

.method private setLayout()V
    .locals 4

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x430c0000    # 140.0f

    .line 68
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41e00000    # 28.0f

    .line 69
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    const/4 v2, -0x1

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    iget v1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_rightMargin:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0xa

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getRealTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 77
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getRealTopMargin()I
    .locals 3

    .line 117
    iget v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_topMargin:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRightMargin()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_rightMargin:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_topMargin:I

    return v0
.end method

.method handleLabelTapped()V
    .locals 4

    .line 137
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 142
    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 143
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REFLECT_OFFLINE_EDIT_IF_ONLINE:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 145
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 149
    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;Z)V

    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$2;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setVisibility(I)V

    return-void
.end method

.method public setRightMargin(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_rightMargin:I

    .line 133
    invoke-direct {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setLayout()V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->_topMargin:I

    .line 123
    invoke-direct {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setLayout()V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setVisibility(I)V

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 96
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->offline_edit_mode_info_view_border2:I

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setBackgroundResource(I)V

    .line 99
    sget v0, Lcom/metamoji/noteanytime/R$color;->white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setTextColor(I)V

    return-void

    .line 101
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->offline_edit_mode_info_view_border:I

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setBackgroundResource(I)V

    .line 102
    const-string p1, "#CA3838"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setTextColor(I)V

    return-void
.end method
