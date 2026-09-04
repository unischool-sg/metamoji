.class public Lcom/metamoji/ui/common/UiRadioButton;
.super Landroid/widget/RelativeLayout;
.source "UiRadioButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;
    }
.end annotation


# static fields
.field public static final TYPE_BOTTOM:I = 0x15

.field public static final TYPE_CENTER:I = 0x11

.field public static final TYPE_LEFT:I = 0x10

.field public static final TYPE_MID:I = 0x14

.field public static final TYPE_MINI:I = 0x6

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_RIGHT:I = 0x12

.field public static final TYPE_ROUND_CENTER:I = 0x8

.field public static final TYPE_ROUND_CENTER_PINK:I = 0xb

.field public static final TYPE_ROUND_LEFT:I = 0x7

.field public static final TYPE_ROUND_LEFT_PINK:I = 0xa

.field public static final TYPE_ROUND_RIGHT:I = 0x9

.field public static final TYPE_ROUND_RIGHT_PINK:I = 0xc

.field public static final TYPE_SMALL_CENTER:I = 0x2

.field public static final TYPE_SMALL_LEFT:I = 0x1

.field public static final TYPE_SMALL_RIGHT:I = 0x3

.field public static final TYPE_TOP:I = 0x13

.field public static final TYPE_WITHCHECKBOX:I = 0x4

.field public static final TYPE_WITHCHECKBOX_BOTTOM:I = 0xf

.field public static final TYPE_WITHCHECKBOX_MID:I = 0xe

.field public static final TYPE_WITHCHECKBOX_TOP:I = 0xd

.field public static final TYPE_WITHPAGE_CENTER:I = 0x17

.field public static final TYPE_WITHPAGE_LEFT:I = 0x16

.field public static final TYPE_WITHPAGE_RIGHT:I = 0x18

.field public static final TYPE_WITHSUBMENU_AND_CHECKBOX:I = 0x5

.field public static final TYPE_WITHSUBMENU_AND_CHECKBOX_BOTTOM:I = 0x1b

.field public static final TYPE_WITHSUBMENU_AND_CHECKBOX_MID:I = 0x1a

.field public static final TYPE_WITHSUBMENU_AND_CHECKBOX_TOP:I = 0x19


# instance fields
.field private mChecked:Z

.field private mDummyTitle:Ljava/lang/CharSequence;

.field private mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

.field private mEnabled:Z

.field private mForceResizable:Z

.field private mIcon:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListener:Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

.field private mMainTitle:Ljava/lang/CharSequence;

.field private mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

.field private mMainTitleWeight:I

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSubTitle:Ljava/lang/CharSequence;

.field private mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

.field private mSubTitleWeight:I

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDummyTitle(Lcom/metamoji/ui/common/UiRadioButton;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceResizable(Lcom/metamoji/ui/common/UiRadioButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mForceResizable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/metamoji/ui/common/UiRadioButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mIcon:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiRadioButton;)Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mListener:Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainTitle(Lcom/metamoji/ui/common/UiRadioButton;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainTitleWeight(Lcom/metamoji/ui/common/UiRadioButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleWeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubTitle(Lcom/metamoji/ui/common/UiRadioButton;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubTitleWeight(Lcom/metamoji/ui/common/UiRadioButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleWeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/metamoji/ui/common/UiRadioButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/metamoji/ui/common/UiRadioButton;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/metamoji/ui/common/UiRadioButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIZZZ)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mListener:Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    .line 60
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    .line 61
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mIconView:Landroid/widget/ImageView;

    .line 62
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 63
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 64
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 p2, 0x2

    .line 70
    iput p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleWeight:I

    const/4 p2, 0x1

    .line 71
    iput p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleWeight:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mForceResizable:Z

    .line 73
    iput v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mIcon:I

    .line 74
    iput-boolean p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mChecked:Z

    .line 81
    iput p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    .line 83
    new-instance p1, Lcom/metamoji/ui/common/UiRadioButton$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiRadioButton$1;-><init>(Lcom/metamoji/ui/common/UiRadioButton;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioButton;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    .line 129
    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mListener:Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    .line 60
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    .line 61
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mIconView:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 63
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 64
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    const/4 v2, 0x2

    .line 70
    iput v2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleWeight:I

    const/4 v3, 0x1

    .line 71
    iput v3, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleWeight:I

    .line 72
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mForceResizable:Z

    .line 73
    iput v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mIcon:I

    .line 74
    iput-boolean v3, p0, Lcom/metamoji/ui/common/UiRadioButton;->mEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mChecked:Z

    .line 132
    sget-object v4, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton:[I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 146
    :try_start_0
    sget v6, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_radiobutton_type:I

    invoke-virtual {v4, v6, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    .line 148
    sget v6, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_maintitle:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 149
    sget v7, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_maintitle_weight:I

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 151
    sget v7, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_subtitle:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 152
    sget v8, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_subtitle_weight:I

    invoke-virtual {v4, v8, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 154
    sget v9, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_dummytitle:I

    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 156
    sget v10, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_icon:I

    invoke-virtual {v4, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 158
    sget v11, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_android_layout_width:I

    const/4 v12, -0x2

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, -0x1

    .line 164
    :cond_0
    sget v13, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_android_layout_height:I

    invoke-virtual {v4, v13, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
    move v12, v13

    .line 169
    :goto_0
    sget v13, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_force_resizable:I

    invoke-virtual {v4, v13, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 171
    sget v14, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_android_enabled:I

    invoke-virtual {v4, v14, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 173
    sget v14, Lcom/metamoji/noteanytime/R$styleable;->UiRadioButton_android_checked:I

    invoke-virtual {v4, v14, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v1, p0

    move-object v4, v7

    move v7, v8

    move v8, v10

    move v10, v12

    move v12, v3

    move-object v3, v6

    move v6, v2

    move-object v2, v5

    move-object v5, v9

    move v9, v11

    move v11, v13

    move v13, v0

    .line 178
    invoke-direct/range {v1 .. v13}, Lcom/metamoji/ui/common/UiRadioButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIZZZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 175
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    throw v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p7

    move/from16 v4, p8

    .line 210
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 212
    iget v6, v0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    const/4 v7, 0x6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    if-eq v6, v7, :cond_0

    .line 222
    sget v6, Lcom/metamoji/noteanytime/R$dimen;->buttonNormalHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    .line 214
    :cond_0
    sget v6, Lcom/metamoji/noteanytime/R$dimen;->buttonMiniHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    .line 219
    :cond_1
    sget v6, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 227
    :goto_0
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 232
    sget v11, Lcom/metamoji/noteanytime/R$id;->control_radiobutton_dummy:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 233
    sget v11, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal_tab:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v11, 0x4

    .line 234
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    invoke-virtual {v9, v10, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v12, Landroid/widget/RadioButton;

    invoke-direct {v12, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v14, -0x1

    .line 254
    invoke-virtual {v12, v14}, Landroid/widget/RadioButton;->setId(I)V

    .line 255
    iget-object v12, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v15, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal_tab:I

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 260
    iget-object v12, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 264
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    sget v14, Lcom/metamoji/noteanytime/R$id;->control_button_base:I

    invoke-virtual {v12, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 268
    sget v7, Lcom/metamoji/noteanytime/R$id;->control_button_base:I

    const/4 v14, 0x5

    invoke-virtual {v12, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x7

    .line 269
    sget v14, Lcom/metamoji/noteanytime/R$id;->control_button_base:I

    invoke-virtual {v12, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 270
    sget v7, Lcom/metamoji/noteanytime/R$id;->control_radiobutton_dummy:I

    const/16 v14, 0x8

    invoke-virtual {v12, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 272
    iget-object v7, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7, v15, v15, v15, v15}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 273
    iget-object v7, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v9, v7, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 278
    sget v12, Lcom/metamoji/noteanytime/R$id;->control_button_base:I

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setId(I)V

    .line 282
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 283
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 284
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v14, p9

    invoke-direct {v12, v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0xf

    .line 285
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    new-instance v14, Landroid/widget/FrameLayout;

    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 288
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v15, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move/from16 v8, p5

    int-to-float v8, v8

    .line 289
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v8, 0x11

    .line 290
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v16, 0x0

    if-eqz v3, :cond_2

    .line 300
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 302
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    sget v8, Lcom/metamoji/noteanytime/R$dimen;->iconPadding:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 306
    sget v13, Lcom/metamoji/noteanytime/R$dimen;->iconHeight:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 p9, v2

    .line 307
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/metamoji/ui/common/UiRadioButton;->mIconView:Landroid/widget/ImageView;

    .line 308
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v2, v0, Lcom/metamoji/ui/common/UiRadioButton;->mIconView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v2, v3, v8, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 314
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v15, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, p9

    goto :goto_1

    :cond_2
    move-object/from16 v2, v16

    move-object v15, v2

    .line 318
    :goto_1
    new-instance v3, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {v3, v1}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 319
    sget v8, Lcom/metamoji/noteanytime/R$id;->control_button_maintitle:I

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setId(I)V

    .line 321
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {}, Lcom/metamoji/cm/ColorUtils;->textStandard()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 322
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 335
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setSingleLine(Z)V

    .line 336
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v13, v8}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 338
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setBackgroundResource(I)V

    if-eqz p7, :cond_5

    .line 343
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x10

    .line 344
    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 346
    iget-object v13, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-nez p10, :cond_4

    if-eq v4, v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v13, v8}, Lcom/metamoji/ui/common/UiTextView;->setResizable(Z)V

    .line 348
    iget-object v8, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v15, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-virtual {v14, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    move-object/from16 v2, v16

    goto :goto_8

    .line 352
    :cond_5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 353
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 354
    iget v8, v0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    const/4 v13, 0x4

    if-eq v8, v13, :cond_6

    const/4 v13, 0x5

    if-eq v8, v13, :cond_6

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    .line 367
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_5

    :cond_6
    :pswitch_0
    const/16 v3, 0x13

    .line 363
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 364
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->controlSpace:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object/from16 v16, p3

    .line 371
    :goto_5
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-nez p10, :cond_8

    const/4 v8, -0x2

    if-eq v4, v8, :cond_7

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v8, 0x1

    :goto_7
    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setResizable(Z)V

    .line 373
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v14, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 378
    :goto_8
    new-instance v3, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {v3, v1}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 379
    sget v8, Lcom/metamoji/noteanytime/R$id;->control_radiobutton_title_dummy:I

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setId(I)V

    .line 380
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 381
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 382
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    .line 383
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setSingleLine(Z)V

    .line 384
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v13, v8}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 385
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setBackgroundResource(I)V

    .line 386
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v13, -0x2

    if-eq v4, v13, :cond_9

    const/4 v15, 0x1

    goto :goto_9

    :cond_9
    move v15, v8

    :goto_9
    invoke-virtual {v3, v15}, Lcom/metamoji/ui/common/UiTextView;->setResizable(Z)V

    .line 388
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p7, :cond_a

    .line 390
    sget v13, Lcom/metamoji/noteanytime/R$dimen;->iconHeight:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 391
    invoke-virtual {v3, v13, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 393
    :cond_a
    iget-object v8, v0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v14, v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v7, v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v3, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {v3, v1}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 399
    sget v1, Lcom/metamoji/noteanytime/R$id;->control_button_subtitle:I

    invoke-virtual {v3, v1}, Lcom/metamoji/ui/common/UiTextView;->setId(I)V

    .line 401
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {}, Lcom/metamoji/cm/ColorUtils;->textStandard()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 402
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 403
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    .line 404
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/metamoji/ui/common/UiTextView;->setSingleLine(Z)V

    .line 406
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiTextView;->setBackgroundResource(I)V

    .line 407
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move/from16 v3, p6

    int-to-float v3, v3

    .line 408
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 409
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-nez p10, :cond_c

    const/4 v13, -0x2

    if-eq v4, v13, :cond_b

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    :cond_c
    :goto_a
    invoke-virtual {v3, v8}, Lcom/metamoji/ui/common/UiTextView;->setResizable(Z)V

    .line 411
    iget-object v3, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v7, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-virtual {v9, v7, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/common/UiRadioButton;->addView(Landroid/view/View;)V

    .line 419
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeft:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 421
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginRight:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 429
    iget v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_b

    .line 483
    :pswitch_1
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 484
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 485
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_bottom:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 486
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_bottom:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 477
    :pswitch_2
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 478
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 479
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_mid:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 480
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_mid:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 471
    :pswitch_3
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 472
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 473
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_top:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 474
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_top:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 558
    :pswitch_4
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withpage_right:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 559
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_right:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 554
    :pswitch_5
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withpage_center:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 555
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_center:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 550
    :pswitch_6
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withpage_left:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 551
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_left:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 546
    :pswitch_7
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_bottom:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 547
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_v_bottom:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 542
    :pswitch_8
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_mid:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 543
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_v_mid:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 538
    :pswitch_9
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_top:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 539
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_v_top:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 534
    :pswitch_a
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_right:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 535
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_right:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 530
    :pswitch_b
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_center:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 531
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_center:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 526
    :pswitch_c
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_left:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 527
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_left:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 460
    :pswitch_d
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 461
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_bottom:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 462
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_bottom:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 455
    :pswitch_e
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 456
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_mid:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 457
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_mid:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 450
    :pswitch_f
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 451
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_top:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 452
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_top:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 520
    :pswitch_10
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallTitleOffset:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 521
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_round_right_pink:I

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 522
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_round_right_pink:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v6, Lcom/metamoji/noteanytime/R$color;->button_header_pink:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    goto/16 :goto_b

    .line 515
    :pswitch_11
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_round_center_pink:I

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 516
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_round_center_pink:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v6, Lcom/metamoji/noteanytime/R$color;->button_header_pink:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    goto/16 :goto_b

    .line 509
    :pswitch_12
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallTitleOffset:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 510
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_round_left_pink:I

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 511
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_round_left_pink:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v6, Lcom/metamoji/noteanytime/R$color;->button_header_pink:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    goto/16 :goto_b

    .line 504
    :pswitch_13
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallTitleOffset:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 505
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_round_right:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 506
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_round_right:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 500
    :pswitch_14
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_round_center:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 501
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_round_center:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 495
    :pswitch_15
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallTitleOffset:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 496
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_tab_round_left:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 497
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_tab_round_left:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 489
    :pswitch_16
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->buttonMiniTitleMargin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 490
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->buttonMiniTitleMargin:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 491
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_mini_tab:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 492
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_mini_tab:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 465
    :pswitch_17
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 466
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 467
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 468
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 445
    :pswitch_18
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 446
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_one:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 447
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_one:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 440
    :pswitch_19
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallTitleOffset:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 441
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_small_right:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 442
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_small_right:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 436
    :pswitch_1a
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_small_center:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 437
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_small_center:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 431
    :pswitch_1b
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->buttonSmallTitleOffset:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 432
    iget-object v4, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_small_left:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 433
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_small_left:I

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_b
    const/4 v8, 0x0

    .line 567
    invoke-virtual {v7, v1, v8, v3, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move-object/from16 v1, p2

    .line 570
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setMainTitle(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_d

    .line 574
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiRadioButton;->setSubTitle(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 577
    :cond_d
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v1, :cond_e

    const/16 v2, 0x8

    .line 578
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    :cond_e
    :goto_c
    if-eqz p4, :cond_f

    move-object/from16 v2, p4

    .line 584
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiRadioButton;->setDummyTitle(Ljava/lang/CharSequence;)V

    :cond_f
    move/from16 v1, p11

    .line 588
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    move/from16 v1, p12

    .line 591
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setChecked(Z)V

    .line 594
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/metamoji/ui/common/UiRadioButton$2;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/common/UiRadioButton$2;-><init>(Lcom/metamoji/ui/common/UiRadioButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v1, v0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/metamoji/ui/common/UiRadioButton$3;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/common/UiRadioButton$3;-><init>(Lcom/metamoji/ui/common/UiRadioButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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


# virtual methods
.method public getDummyTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMainTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRadioButtonWidth()I
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getMeasuredWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0

    .line 849
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    return v0

    .line 889
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mEnabled:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 727
    check-cast p1, Landroid/os/Bundle;

    .line 729
    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 732
    const-string v0, "dummyTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 734
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setDummyTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 714
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 716
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 717
    const-string v2, "parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 720
    const-string v0, "dummyTitle"

    iget-object v2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public setChecked(Z)V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_4

    .line 800
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 801
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mChecked:Z

    .line 803
    iget v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mType:I

    const/high16 v1, -0x1000000

    packed-switch v0, :pswitch_data_0

    .line 822
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 813
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setDisabledColor(I)V

    .line 814
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mEnabled:Z

    .line 818
    iget-object v1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_1

    .line 815
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 807
    :pswitch_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$color;->button_header_pink:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 808
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiTextView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    goto :goto_2

    .line 818
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 822
    :cond_2
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 823
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setDisabledColor(I)V

    .line 825
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiTextView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    :goto_2
    if-eqz p1, :cond_3

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_3

    .line 831
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_3

    .line 834
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioButton;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    :cond_3
    return-void

    .line 841
    :cond_4
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mChecked:Z

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDummyTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mDummyTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 859
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 860
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 861
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mChecked:Z

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_4

    .line 865
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 875
    iget-object v2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    .line 866
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiTextView;->setDisabledColor(I)V

    .line 871
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz p1, :cond_2

    .line 868
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 871
    :cond_2
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 875
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 876
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setDisabledColor(I)V

    .line 878
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 880
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_5

    .line 881
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 883
    :cond_5
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mEnabled:Z

    return-void
.end method

.method public setForceResize(Z)V
    .locals 0

    .line 782
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mForceResizable:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 790
    iput p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mIcon:I

    return-void
.end method

.method public setMainTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mListener:Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    return-void
.end method

.method public setRadioButtonType(I)V
    .locals 2

    .line 659
    sget v0, Lcom/metamoji/noteanytime/R$id;->control_radiobutton_dummy:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiRadioButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    .line 690
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_bottom:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 691
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_bottom:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 686
    :pswitch_1
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_mid:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 687
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_mid:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 682
    :pswitch_2
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_top:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 683
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox_top:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 674
    :pswitch_3
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_bottom:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 675
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_bottom:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 670
    :pswitch_4
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_mid:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 671
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_mid:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 666
    :pswitch_5
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_top:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 667
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_top:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 679
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu_and_checkbox:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 662
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_one:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 663
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox_one:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 694
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mRadioButton:Landroid/widget/RadioButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_small_right:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 695
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->button_small_right:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 756
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiTextView;->resize()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 761
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 764
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleWeight(II)V
    .locals 0

    .line 772
    iput p1, p0, Lcom/metamoji/ui/common/UiRadioButton;->mMainTitleWeight:I

    .line 773
    iput p2, p0, Lcom/metamoji/ui/common/UiRadioButton;->mSubTitleWeight:I

    return-void
.end method
