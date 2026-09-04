.class public Lcom/metamoji/ui/DetailSelector;
.super Landroid/widget/FrameLayout;
.source "DetailSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/DetailSelector$ButtonHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_SIZE:F = 40.0f


# instance fields
.field private _current:I

.field private _dwindow:Lcom/metamoji/ui/DetailWindow;

.field private _mode:Lcom/metamoji/nt/NtNoteController$NoteMode;


# direct methods
.method static bridge synthetic -$$Nest$fget_dwindow(Lcom/metamoji/ui/DetailSelector;)Lcom/metamoji/ui/DetailWindow;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailSelector;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSelect(Lcom/metamoji/ui/DetailSelector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailSelector;->onSelect(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    return-void
.end method

.method private addEraserButtons()V
    .locals 7

    .line 207
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v1, 0x42200000    # 40.0f

    .line 208
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 210
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v2

    const-string v3, "MMJNtEraserSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtEraserSettings;

    .line 211
    sget v3, Lcom/metamoji/ui/DetailSelectorButton;->ERASER_BUTTONS:I

    .line 212
    invoke-static {}, Lcom/metamoji/ui/DetailSelector;->isDrawClearAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 216
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 218
    new-instance v5, Lcom/metamoji/ui/DetailSelectorButton;

    invoke-virtual {p0}, Lcom/metamoji/ui/DetailSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/metamoji/ui/DetailSelectorButton;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {v5, v6}, Lcom/metamoji/ui/DetailSelectorButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {v5, v2}, Lcom/metamoji/ui/DetailSelectorButton;->setEraserImage(I)V

    .line 222
    iget v6, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    if-ne v2, v6, :cond_1

    .line 223
    invoke-virtual {v5, v4}, Lcom/metamoji/ui/DetailSelectorButton;->setSelected(Z)V

    .line 225
    :cond_1
    new-instance v4, Lcom/metamoji/ui/DetailSelector$ButtonHandler;

    invoke-direct {v4, p0, v2}, Lcom/metamoji/ui/DetailSelector$ButtonHandler;-><init>(Lcom/metamoji/ui/DetailSelector;I)V

    invoke-virtual {v5, v4}, Lcom/metamoji/ui/DetailSelectorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_selector_back:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    .line 231
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private addPenButtons()V
    .locals 8

    .line 152
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v1, 0x42200000    # 40.0f

    .line 153
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 155
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v2

    const-string v3, "MMJNtPenSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPenSettings;

    .line 156
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v3

    .line 157
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    .line 160
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    .line 163
    new-instance v6, Lcom/metamoji/ui/DetailSelectorButton;

    invoke-virtual {p0}, Lcom/metamoji/ui/DetailSelector;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/metamoji/ui/DetailSelectorButton;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    invoke-virtual {v6, v7}, Lcom/metamoji/ui/DetailSelectorButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/metamoji/ui/DetailSelectorButton;->setPenImage(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 167
    iget v7, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    if-ne v4, v7, :cond_0

    .line 168
    invoke-virtual {v6, v5}, Lcom/metamoji/ui/DetailSelectorButton;->setSelected(Z)V

    .line 170
    :cond_0
    new-instance v5, Lcom/metamoji/ui/DetailSelector$ButtonHandler;

    invoke-direct {v5, p0, v4}, Lcom/metamoji/ui/DetailSelector$ButtonHandler;-><init>(Lcom/metamoji/ui/DetailSelector;I)V

    invoke-virtual {v6, v5}, Lcom/metamoji/ui/DetailSelectorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_1
    new-instance v2, Lcom/metamoji/ui/DetailSelectorButton;

    invoke-virtual {p0}, Lcom/metamoji/ui/DetailSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/metamoji/ui/DetailSelectorButton;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/DetailSelectorButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/DetailSelector;->updateShapePenModeButton(Lcom/metamoji/ui/DetailSelectorButton;)V

    .line 181
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 183
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->isShapePenModeButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 188
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_selector_back:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v3, v5

    mul-int/2addr v1, v3

    .line 190
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private static isDrawClearAvailable()Z
    .locals 2

    .line 199
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->DrawClear:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSelect(I)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/DetailSelector;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    iget-object v1, p0, Lcom/metamoji/ui/DetailSelector;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget v2, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/ui/DetailWindow;->onSelect(Lcom/metamoji/nt/NtNoteController$NoteMode;IZ)V

    return-void
.end method


# virtual methods
.method public init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/metamoji/ui/DetailSelector;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    .line 51
    iput-object p2, p0, Lcom/metamoji/ui/DetailSelector;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailSelector;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$layout;->dwindow_selector:I

    invoke-static {p1, v0, p0}, Lcom/metamoji/ui/DetailSelector;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_bar_close:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/metamoji/ui/DetailSelector$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/DetailSelector$1;-><init>(Lcom/metamoji/ui/DetailSelector;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-object p1, Lcom/metamoji/ui/DetailSelector$2;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/DetailSelector;->addEraserButtons()V

    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/DetailSelector;->addPenButtons()V

    return-void
.end method

.method public select(I)V
    .locals 3

    .line 80
    iget v0, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    if-ne p1, v0, :cond_0

    return-void

    .line 84
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    iget v1, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    if-ltz v1, :cond_1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    if-ltz p1, :cond_2

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 94
    :cond_2
    iput p1, p0, Lcom/metamoji/ui/DetailSelector;->_current:I

    return-void
.end method

.method public update(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/DetailSelector;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-ltz p1, :cond_2

    .line 106
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/DetailSelectorButton;

    .line 111
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->setPenImage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAll()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/metamoji/ui/DetailSelector;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/DetailSelectorButton;

    .line 124
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/DetailSelectorButton;->setPenImage(I)V

    .line 126
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_1

    .line 127
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/DetailSelector;->updateShapePenModeButton(Lcom/metamoji/ui/DetailSelectorButton;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method updateShapePenModeButton(Lcom/metamoji/ui/DetailSelectorButton;)V
    .locals 6

    const/high16 v0, 0x42200000    # 40.0f

    .line 240
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 242
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_select_preview:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/DetailSelectorButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 243
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    .line 244
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 246
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    .line 247
    const-string v4, "forSchoolShapePenMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    int-to-float v4, v0

    .line 248
    invoke-static {v4, v2, v3}, Lcom/metamoji/ui/HoverSelector;->CreateShapePenButton(FFZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    invoke-virtual {p1, v5}, Lcom/metamoji/ui/DetailSelectorButton;->setSelected(Z)V

    .line 253
    new-instance v1, Lcom/metamoji/ui/DetailSelector$ButtonHandler;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v2}, Lcom/metamoji/ui/DetailSelector$ButtonHandler;-><init>(Lcom/metamoji/ui/DetailSelector;I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/DetailSelectorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v1

    const-string v2, "MMJNtPenSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPenSettings;

    .line 256
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v1

    .line 257
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->isShapePenModeButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {p1, v5}, Lcom/metamoji/ui/DetailSelectorButton;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 261
    invoke-virtual {p1, v2}, Lcom/metamoji/ui/DetailSelectorButton;->setVisibility(I)V

    .line 264
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_selector_back:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailSelector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 266
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
