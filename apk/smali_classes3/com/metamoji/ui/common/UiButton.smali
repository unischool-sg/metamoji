.class public Lcom/metamoji/ui/common/UiButton;
.super Landroid/widget/RelativeLayout;
.source "UiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiButton$UiInkColorView;,
        Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;
    }
.end annotation


# static fields
.field public static final MAINTITLEGRAVITY_CENTER_HORIZONTAL:I = 0x2

.field public static final MAINTITLEGRAVITY_LEFT:I = 0x0

.field public static final MAINTITLEGRAVITY_RIGHT:I = 0x1

.field public static final TYPE_ACCORDION:I = 0xb

.field public static final TYPE_ACCORDION_IMAGE:I = 0x10

.field public static final TYPE_ACCORDION_INKCOLOR:I = 0xc

.field public static final TYPE_BLUE:I = 0x5

.field public static final TYPE_INAPPPURCHASE:I = 0x7

.field public static final TYPE_MENU:I = 0x11

.field public static final TYPE_MINI:I = 0x4

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_NORMAL_BLUE:I = 0x8

.field public static final TYPE_NORMAL_RED:I = 0xa

.field public static final TYPE_PURPLE:I = 0x6

.field public static final TYPE_SUB:I = 0x3

.field public static final TYPE_SUB_PINK:I = 0x9

.field public static final TYPE_WITHCHECKBOX:I = 0x2

.field public static final TYPE_WITHSUBMENU:I = 0x1

.field public static final TYPE_WITHSUB_BOTTOM:I = 0xf

.field public static final TYPE_WITHSUB_MID:I = 0xe

.field public static final TYPE_WITHSUB_TOP:I = 0xd


# instance fields
.field private mButtonBase:Landroid/widget/LinearLayout;

.field private mButtonPaddingRight:I

.field private mDefSize:F

.field private mEnabled:Z

.field private mForceResizable:Z

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLongListener:Landroid/view/View$OnLongClickListener;

.field private mMainTitle:Ljava/lang/CharSequence;

.field private mMainTitleGravity:I

.field private mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

.field private mMainTitleWeight:I

.field private mMinWidth:I

.field private mRoundRadius:I

.field private mSelected:Z

.field private mSubTitle:Ljava/lang/CharSequence;

.field private mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

.field private mSubTitleWeight:I

.field private mTitlePaddingLeft:I

.field private mTitlePaddingRight:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mType:I

.field private mUnknown:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonBase(Lcom/metamoji/ui/common/UiButton;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPaddingRight(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonPaddingRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceResizable(Lcom/metamoji/ui/common/UiButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiButton;->mForceResizable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButton;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButton;->mLongListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainTitle(Lcom/metamoji/ui/common/UiButton;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainTitleGravity(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleGravity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainTitleWeight(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleWeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinWidth(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mMinWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mRoundRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubTitle(Lcom/metamoji/ui/common/UiButton;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubTitleWeight(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleWeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitlePaddingLeft(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitlePaddingRight(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/metamoji/ui/common/UiButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiButton;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnknown(Lcom/metamoji/ui/common/UiButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiButton;->mUnknown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmUnknown(Lcom/metamoji/ui/common/UiButton;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton;->mUnknown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/metamoji/ui/common/UiButton;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/metamoji/ui/common/UiButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    .line 83
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mListener:Landroid/view/View$OnClickListener;

    .line 55
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mLongListener:Landroid/view/View$OnLongClickListener;

    .line 56
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 57
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 59
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 60
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    .line 61
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mImageView:Landroid/widget/ImageView;

    .line 62
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiButton;->mEnabled:Z

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiButton;->mSelected:Z

    .line 66
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiButton;->mUnknown:Z

    .line 68
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitle:Ljava/lang/CharSequence;

    .line 69
    iput-object p2, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitle:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    .line 70
    iput p2, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleWeight:I

    .line 71
    iput v0, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleWeight:I

    .line 72
    iput v1, p0, Lcom/metamoji/ui/common/UiButton;->mButtonPaddingRight:I

    .line 73
    iput v1, p0, Lcom/metamoji/ui/common/UiButton;->mMinWidth:I

    .line 74
    iput v1, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleGravity:I

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingLeft:I

    .line 76
    iput p2, p0, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingRight:I

    .line 77
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiButton;->mForceResizable:Z

    const/4 p2, 0x5

    .line 78
    iput p2, p0, Lcom/metamoji/ui/common/UiButton;->mRoundRadius:I

    .line 85
    iput p1, p0, Lcom/metamoji/ui/common/UiButton;->mType:I

    .line 87
    new-instance p1, Lcom/metamoji/ui/common/UiButton$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiButton$1;-><init>(Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiButton;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v1, p0

    .line 136
    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 54
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mListener:Landroid/view/View$OnClickListener;

    .line 55
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mLongListener:Landroid/view/View$OnLongClickListener;

    .line 56
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 57
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    .line 58
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 59
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 60
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    .line 61
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mImageView:Landroid/widget/ImageView;

    .line 62
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 64
    iput-boolean v2, v1, Lcom/metamoji/ui/common/UiButton;->mEnabled:Z

    const/4 v3, 0x0

    .line 65
    iput-boolean v3, v1, Lcom/metamoji/ui/common/UiButton;->mSelected:Z

    .line 66
    iput-boolean v3, v1, Lcom/metamoji/ui/common/UiButton;->mUnknown:Z

    .line 67
    iput v3, v1, Lcom/metamoji/ui/common/UiButton;->mType:I

    .line 68
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mMainTitle:Ljava/lang/CharSequence;

    .line 69
    iput-object v0, v1, Lcom/metamoji/ui/common/UiButton;->mSubTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    .line 70
    iput v0, v1, Lcom/metamoji/ui/common/UiButton;->mMainTitleWeight:I

    .line 71
    iput v2, v1, Lcom/metamoji/ui/common/UiButton;->mSubTitleWeight:I

    .line 72
    iput v3, v1, Lcom/metamoji/ui/common/UiButton;->mButtonPaddingRight:I

    .line 73
    iput v3, v1, Lcom/metamoji/ui/common/UiButton;->mMinWidth:I

    .line 74
    iput v3, v1, Lcom/metamoji/ui/common/UiButton;->mMainTitleGravity:I

    const/4 v4, -0x1

    .line 75
    iput v4, v1, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingLeft:I

    .line 76
    iput v4, v1, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingRight:I

    .line 77
    iput-boolean v3, v1, Lcom/metamoji/ui/common/UiButton;->mForceResizable:Z

    const/4 v5, 0x5

    .line 78
    iput v5, v1, Lcom/metamoji/ui/common/UiButton;->mRoundRadius:I

    .line 139
    sget-object v5, Lcom/metamoji/noteanytime/R$styleable;->UiButton:[I

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 155
    :try_start_0
    sget v7, Lcom/metamoji/noteanytime/R$styleable;->UiButton_button_type:I

    invoke-virtual {v5, v7, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v1, Lcom/metamoji/ui/common/UiButton;->mType:I

    .line 157
    sget v7, Lcom/metamoji/noteanytime/R$styleable;->UiButton_maintitle:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 158
    sget v8, Lcom/metamoji/noteanytime/R$styleable;->UiButton_maintitle_weight:I

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 160
    sget v8, Lcom/metamoji/noteanytime/R$styleable;->UiButton_subtitle:I

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 161
    sget v9, Lcom/metamoji/noteanytime/R$styleable;->UiButton_subtitle_weight:I

    invoke-virtual {v5, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 163
    sget v10, Lcom/metamoji/noteanytime/R$styleable;->UiButton_android_layout_width:I

    const/4 v11, -0x2

    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    if-nez v10, :cond_0

    move v10, v4

    .line 169
    :cond_0
    sget v12, Lcom/metamoji/noteanytime/R$styleable;->UiButton_android_layout_height:I

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    move v11, v12

    .line 174
    :goto_0
    sget v12, Lcom/metamoji/noteanytime/R$styleable;->UiButton_android_minWidth:I

    invoke-virtual {v5, v12, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    .line 176
    sget v13, Lcom/metamoji/noteanytime/R$styleable;->UiButton_android_enabled:I

    invoke-virtual {v5, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 178
    sget v2, Lcom/metamoji/noteanytime/R$styleable;->UiButton_selected:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 180
    sget v2, Lcom/metamoji/noteanytime/R$styleable;->UiButton_button_padding_right:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 182
    sget v13, Lcom/metamoji/noteanytime/R$styleable;->UiButton_maintitle_gravity:I

    invoke-virtual {v5, v13, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    .line 184
    sget v14, Lcom/metamoji/noteanytime/R$styleable;->UiButton_title_padding_left:I

    invoke-virtual {v5, v14, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v14

    .line 186
    sget v3, Lcom/metamoji/noteanytime/R$styleable;->UiButton_title_padding_right:I

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    .line 188
    sget v4, Lcom/metamoji/noteanytime/R$styleable;->UiButton_force_resizable:I

    move/from16 p2, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v5, p2

    move-object v4, v8

    move v8, v11

    move v11, v13

    move v13, v3

    move-object v3, v7

    move v7, v10

    move v10, v2

    move-object v2, v6

    move v6, v9

    move v9, v12

    move v12, v14

    move v14, v0

    .line 193
    invoke-direct/range {v1 .. v16}, Lcom/metamoji/ui/common/UiButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 190
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    throw v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p9

    move/from16 v4, p10

    .line 230
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 232
    iget v6, v0, Lcom/metamoji/ui/common/UiButton;->mType:I

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eq v6, v10, :cond_1

    if-eq v6, v9, :cond_0

    if-eq v6, v8, :cond_0

    if-eq v6, v7, :cond_0

    .line 242
    sget v6, Lcom/metamoji/noteanytime/R$dimen;->buttonNormalHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    .line 239
    :cond_0
    sget v6, Lcom/metamoji/noteanytime/R$dimen;->buttonColorHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    .line 234
    :cond_1
    sget v6, Lcom/metamoji/noteanytime/R$dimen;->buttonMiniHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 246
    :goto_0
    iget v11, v0, Lcom/metamoji/ui/common/UiButton;->mType:I

    const/4 v12, 0x3

    if-eqz v11, :cond_3

    if-eq v11, v12, :cond_2

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    if-nez p8, :cond_4

    .line 250
    sget v11, Lcom/metamoji/noteanytime/R$dimen;->buttonSubMinWidth:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_2

    :cond_3
    :pswitch_1
    if-nez p8, :cond_4

    .line 262
    sget v11, Lcom/metamoji/noteanytime/R$dimen;->buttonNormalMinWidth:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v11, p8

    .line 269
    :goto_2
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    .line 270
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 272
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v15, p7

    invoke-direct {v13, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xf

    .line 276
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 277
    iget-object v15, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v7, Lcom/metamoji/noteanytime/R$id;->control_button_base:I

    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 281
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 282
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 283
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v11, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal:I

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 287
    new-instance v7, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {v7, v1}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 288
    invoke-virtual {v7, v14}, Lcom/metamoji/ui/common/UiTextView;->setDuplicateParentStateEnabled(Z)V

    .line 289
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v7}, Lcom/metamoji/ui/common/UiTextView;->getTextSize()F

    move-result v7

    iput v7, v0, Lcom/metamoji/ui/common/UiButton;->mDefSize:F

    .line 290
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v11, Lcom/metamoji/noteanytime/R$id;->control_button_maintitle:I

    invoke-virtual {v7, v11}, Lcom/metamoji/ui/common/UiTextView;->setId(I)V

    .line 292
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {}, Lcom/metamoji/cm/ColorUtils;->textStandard()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 293
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v11}, Lcom/metamoji/ui/common/UiTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 294
    iget v7, v0, Lcom/metamoji/ui/common/UiButton;->mType:I

    const/16 v11, 0x15

    const/16 v15, 0x11

    if-eq v7, v12, :cond_7

    if-eq v7, v10, :cond_7

    if-eq v7, v9, :cond_7

    if-eq v7, v8, :cond_7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_7

    if-eq v4, v14, :cond_6

    .line 309
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    const/16 v4, 0x13

    .line 312
    invoke-virtual {v7, v4}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    goto :goto_3

    .line 309
    :cond_5
    invoke-virtual {v7, v15}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    goto :goto_3

    .line 306
    :cond_6
    iget-object v4, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v4, v11}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    :goto_3
    move-object/from16 v4, p3

    goto :goto_4

    .line 300
    :cond_7
    iget-object v4, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v4, v15}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    const/4 v4, 0x0

    .line 317
    :goto_4
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v7, v14}, Lcom/metamoji/ui/common/UiTextView;->setSingleLine(Z)V

    .line 318
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8, v14}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 320
    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/metamoji/ui/common/UiTextView;->setBackgroundResource(I)V

    const/4 v7, -0x2

    if-lez v3, :cond_8

    .line 323
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_5

    .line 326
    :cond_8
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v4, :cond_9

    .line 328
    sget v8, Lcom/metamoji/noteanytime/R$dimen;->controlSpace:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_9
    move/from16 v8, p4

    int-to-float v8, v8

    .line 330
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_5
    const/16 v8, 0x10

    .line 332
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 333
    iget-object v12, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-nez p13, :cond_b

    if-eq v2, v7, :cond_a

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    move v15, v14

    :goto_7
    invoke-virtual {v12, v15}, Lcom/metamoji/ui/common/UiTextView;->setResizable(Z)V

    .line 335
    iget-object v12, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v12, v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget v9, v0, Lcom/metamoji/ui/common/UiButton;->mType:I

    const/16 v12, 0xc

    if-ne v9, v12, :cond_c

    .line 338
    new-instance v2, Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;-><init>(Lcom/metamoji/ui/common/UiButton;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/metamoji/ui/common/UiButton;->mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    .line 339
    sget v7, Lcom/metamoji/noteanytime/R$id;->control_button_inkcolor:I

    invoke-virtual {v2, v7}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->setId(I)V

    add-int/lit8 v2, v6, -0x8

    .line 342
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 344
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/metamoji/ui/common/UiButton;->mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    invoke-virtual {v2, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    :cond_c
    if-ne v9, v8, :cond_d

    .line 347
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/metamoji/ui/common/UiButton;->mImageView:Landroid/widget/ImageView;

    .line 348
    sget v7, Lcom/metamoji/noteanytime/R$id;->control_button_image:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 350
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->buttonImageWidth:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 351
    sget v7, Lcom/metamoji/noteanytime/R$dimen;->buttonImageHeight:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 352
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 354
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 358
    :cond_d
    new-instance v9, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {v9, v1}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    .line 359
    sget v12, Lcom/metamoji/noteanytime/R$id;->control_button_subtitle:I

    invoke-virtual {v9, v12}, Lcom/metamoji/ui/common/UiTextView;->setId(I)V

    .line 361
    iget-object v9, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {}, Lcom/metamoji/cm/ColorUtils;->textStandard()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 362
    iget-object v9, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v12}, Lcom/metamoji/ui/common/UiTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 363
    iget-object v9, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v9, v11}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    .line 364
    iget-object v9, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v9, v14}, Lcom/metamoji/ui/common/UiTextView;->setSingleLine(Z)V

    .line 366
    iget-object v9, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/metamoji/ui/common/UiTextView;->setBackgroundResource(I)V

    if-lez v3, :cond_e

    .line 369
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_8

    .line 372
    :cond_e
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move/from16 v11, p5

    int-to-float v11, v11

    .line 373
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 375
    :goto_8
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 376
    iget-object v8, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-nez p13, :cond_10

    if-eq v2, v7, :cond_f

    goto :goto_9

    :cond_f
    const/4 v14, 0x0

    :cond_10
    :goto_9
    invoke-virtual {v8, v14}, Lcom/metamoji/ui/common/UiTextView;->setResizable(Z)V

    .line 378
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v2, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    if-lez v3, :cond_11

    .line 383
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 388
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :cond_11
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v13}, Lcom/metamoji/ui/common/UiButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeft:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 397
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginRight:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 405
    iget v3, v0, Lcom/metamoji/ui/common/UiButton;->mType:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_b

    .line 507
    :pswitch_2
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginRightMenu:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 508
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_menu:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 419
    :pswitch_3
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 420
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsub_bottom:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 415
    :pswitch_4
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 416
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsub_mid:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 411
    :pswitch_5
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 412
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsub_top:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 502
    :pswitch_6
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithAccordion:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 504
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_accordion:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 496
    :pswitch_7
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v6, Lcom/metamoji/noteanytime/R$color;->button_normal_red:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 497
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal_red:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 437
    :pswitch_8
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->buttonSubTitleMargin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 438
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->buttonSubTitleMargin:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 444
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_sub_pink:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 491
    :pswitch_9
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_textcolor_blue:I

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiTextView;->setTextColorStateList(I)V

    .line 492
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal_blue:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 467
    :pswitch_a
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_textcolor_blue:I

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiTextView;->setTextColorStateList(I)V

    .line 468
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal_blue:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_b

    .line 477
    :pswitch_b
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v6, Lcom/metamoji/noteanytime/R$color;->button_header_purple:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    .line 478
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal_purple:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_b

    .line 448
    :pswitch_c
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 449
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    sget v6, Lcom/metamoji/noteanytime/R$color;->button_header_blue:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiTextView;->setEnabledColor(I)V

    goto :goto_b

    .line 485
    :pswitch_d
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->buttonMiniTitleMargin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 486
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->buttonMiniTitleMargin:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b

    .line 427
    :pswitch_e
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->buttonSubTitleMargin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 428
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->buttonSubTitleMargin:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 434
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_sub:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_b

    .line 423
    :pswitch_f
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 424
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_b

    .line 407
    :pswitch_10
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->subTitleMarginRightWithSubMenu:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 408
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->control_button_withsubmenu:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_b
    if-ltz p11, :cond_12

    move/from16 v1, p11

    :cond_12
    if-ltz p12, :cond_13

    move/from16 v2, p12

    .line 521
    :cond_13
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move-object/from16 v1, p2

    .line 524
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_14

    .line 528
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 531
    :cond_14
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v1, :cond_15

    const/16 v2, 0x8

    .line 532
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    :cond_15
    :goto_c
    move/from16 v1, p14

    .line 537
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    move/from16 v1, p15

    .line 540
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 543
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ui/common/UiButton$2;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/common/UiButton$2;-><init>(Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ui/common/UiButton$3;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/common/UiButton$3;-><init>(Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ui/common/UiButton$4;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/common/UiButton$4;-><init>(Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getMainTitleTextSize()F
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiTextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    return v0

    .line 786
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiButton;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    return v0

    .line 763
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiButton;->mSelected:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const/4 v0, 0x0

    .line 807
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 808
    instance-of v0, p1, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;

    if-eqz v0, :cond_1

    .line 809
    check-cast p1, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;

    .line 810
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 811
    :cond_0
    iget-boolean p1, p1, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isEnabled:Z

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 797
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 798
    new-instance v0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiButton;->isEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;-><init>(ZZ)V

    return-object v0
.end method

.method public setButtonPaddingRight(I)V
    .locals 0

    .line 675
    iput p1, p0, Lcom/metamoji/ui/common/UiButton;->mButtonPaddingRight:I

    return-void
.end method

.method public setCheckBoxUnknown()V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 740
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiButton;->mUnknown:Z

    .line 741
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->button_withcheckbox_minus:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_2

    .line 778
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 780
    :cond_2
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton;->mEnabled:Z

    return-void
.end method

.method public setForceResize(Z)V
    .locals 0

    .line 701
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton;->mForceResizable:Z

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 727
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton;->mImageBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setInkColor(I)V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->setInkColor(I)V

    :cond_0
    return-void
.end method

.method public setInkColor(II)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mInkColorView:Lcom/metamoji/ui/common/UiButton$UiInkColorView;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->setInkColor(II)V

    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMainTitleGravity(I)V
    .locals 0

    .line 683
    iput p1, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleGravity:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 667
    iput p1, p0, Lcom/metamoji/ui/common/UiButton;->mMinWidth:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 612
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 613
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton;->mLongListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 621
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 622
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mButtonBase:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 757
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton;->mSelected:Z

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleView:Lcom/metamoji/ui/common/UiTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 647
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 650
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitlePadding(II)V
    .locals 0

    .line 691
    iput p1, p0, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingLeft:I

    .line 692
    iput p2, p0, Lcom/metamoji/ui/common/UiButton;->mTitlePaddingRight:I

    return-void
.end method

.method public setTitleWeight(II)V
    .locals 0

    .line 658
    iput p1, p0, Lcom/metamoji/ui/common/UiButton;->mMainTitleWeight:I

    .line 659
    iput p2, p0, Lcom/metamoji/ui/common/UiButton;->mSubTitleWeight:I

    return-void
.end method
