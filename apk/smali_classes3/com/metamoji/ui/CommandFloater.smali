.class public Lcom/metamoji/ui/CommandFloater;
.super Landroidx/fragment/app/Fragment;
.source "CommandFloater.java"


# direct methods
.method static bridge synthetic -$$Nest$mgetCommandManager(Lcom/metamoji/ui/CommandFloater;)Lcom/metamoji/nt/NtCommandManager;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/CommandFloater;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 28
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    .line 38
    sget v1, Lcom/metamoji/noteanytime/R$layout;->editor_floater:I

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    sget v3, Lcom/metamoji/noteanytime/R$id;->floater_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    .line 45
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v2, v2, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {v0}, Lcom/metamoji/ui/CommandFloater;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    .line 50
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v7, v3

    .line 52
    sget v3, Lcom/metamoji/noteanytime/R$id;->floater_undo:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 53
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_UNDO:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v6

    .line 57
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_undo:I

    invoke-static {v4}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v10, 0xff

    const/16 v11, 0x45

    const/16 v12, 0x4b

    const/16 v13, 0x54

    .line 58
    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v4, v5}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v9, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v8, v7

    .line 59
    invoke-static/range {v4 .. v9}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v14, 0x75

    const/16 v15, 0x79

    const/16 v5, 0x80

    .line 61
    invoke-static {v10, v14, v15, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v4, v6}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v6, 0xc0

    .line 62
    invoke-static {v10, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v4, v8}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 63
    sget v9, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base:I

    invoke-static {v9}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 64
    sget v16, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base_p:I

    invoke-static/range {v16 .. v16}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 65
    invoke-static {v9, v4, v7, v7}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 66
    invoke-static {v5, v4, v7, v7}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 67
    invoke-static {v9, v8, v7, v7}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 69
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 70
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 71
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 72
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v8, 0x101009e

    const v14, -0x10100a7

    .line 75
    filled-new-array {v8, v14}, [I

    move-result-object v15

    invoke-virtual {v5, v15, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v15, 0x10100a7

    .line 76
    filled-new-array {v8, v15}, [I

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v6, -0x101009e

    const v9, -0x10100a1

    .line 77
    filled-new-array {v6, v9, v14}, [I

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v4, Lcom/metamoji/ui/CommandFloater$1;

    invoke-direct {v4, v0}, Lcom/metamoji/ui/CommandFloater$1;-><init>(Lcom/metamoji/ui/CommandFloater;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v3, Lcom/metamoji/noteanytime/R$id;->floater_redo:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_REDO:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_redo:I

    invoke-static {v4}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 97
    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v4, v5}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move v5, v9

    const/4 v9, 0x0

    move v8, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move v11, v8

    move v8, v7

    move v13, v6

    const/16 v11, 0xc0

    const v12, 0x101009e

    move-object v6, v2

    const/16 v2, 0x80

    .line 98
    invoke-static/range {v4 .. v9}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x75

    const/16 v6, 0x79

    .line 100
    invoke-static {v10, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v4, v2}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 101
    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v2, v4}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 102
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base:I

    invoke-static {v5}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 103
    sget v6, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base_p:I

    invoke-static {v6}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    invoke-static {v5, v2, v7, v7}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 105
    invoke-static {v6, v2, v7, v7}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    invoke-static {v5, v4, v7, v7}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 108
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 109
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 111
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 113
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 114
    filled-new-array {v12, v14}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 115
    filled-new-array {v12, v15}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v5, -0x10100a1

    .line 116
    filled-new-array {v13, v5, v14}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    new-instance v2, Lcom/metamoji/ui/CommandFloater$2;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/CommandFloater$2;-><init>(Lcom/metamoji/ui/CommandFloater;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
