.class public Lcom/metamoji/ui/common/UiColorSelectionView2;
.super Landroid/widget/HorizontalScrollView;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupView;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;,
        Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;
    }
.end annotation


# static fields
.field public static final COLOR_TYPE_BACK:I = 0x2

.field public static final COLOR_TYPE_FILL:I = 0x4

.field public static final COLOR_TYPE_LASER:I = 0x3

.field public static final COLOR_TYPE_LINE:I = 0x5

.field public static final COLOR_TYPE_PEN:I = 0x0

.field public static final COLOR_TYPE_TEXT:I = 0x1

.field static final mTickBrightness:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;


# instance fields
.field private mCellCountPerLine:I

.field private mCellHeight:I

.field private mCellHightByWidthRatio:F

.field private mCellHorzSpacing:I

.field private mCellHorzSpacingRatio:F

.field private mCellShadowDxy:F

.field private mCellShadowRadius:F

.field private mCellVertSpacing:I

.field private mCellVertSpacingRatio:F

.field private mCellWidth:I

.field private mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

.field private mColorType:I

.field private mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

.field mCurrentPage:I

.field private mDensity:F

.field mDisableRewinder:Z

.field private mDisallow:Z

.field private mGroupColorPaletteChangeStyle:I

.field private mGroupColorPaletteGradation:I

.field private mGroupColorPaletteMarker:I

.field private mGroupColorPaletteStandard:I

.field private mGroupColorWheelGradation:I

.field private mGroupColorWheelStandard:I

.field private mGroupIdColorPaletteChangeStyle:Ljava/lang/String;

.field private mGroupIdColorPaletteGradation:Ljava/lang/String;

.field private mGroupIdColorPaletteMarker:Ljava/lang/String;

.field private mGroupIdColorPaletteStandard:Ljava/lang/String;

.field private mGroupIdColorWheelGradation:Ljava/lang/String;

.field private mGroupIdColorWheelStandard:Ljava/lang/String;

.field private mLabelHeight:I

.field mPageCount:I

.field private mPrevX:F

.field private mPrevY:F

.field mRewindScroller:Landroid/widget/Scroller;

.field mRewindTask:Ljava/lang/Runnable;

.field private mRoundRadius:I

.field mScrollTick:J

.field private mSelectMarkMargin:F

.field private mSelectMarkWidth:F

.field private mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mSideMargin:I

.field private mSideMarginRatio:F

.field private mTextShadowDxy:F

.field private mTextShadowRadius:F

.field mTimer:Lcom/metamoji/cm/UiTimer;

.field private mTopMargin:I

.field private mTopMarginRatio:F

.field mTouching:Z

.field mTransposedMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCellCountPerLine(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIdColorPaletteChangeStyle(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteChangeStyle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIdColorPaletteGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteGradation:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIdColorPaletteMarker(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteMarker:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIdColorPaletteStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIdColorWheelGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupIdColorWheelStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRoundRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectMarkMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkMargin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectMarkWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetIdGradation_ColorPaletteGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMargin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextShadowDxy(Lcom/metamoji/ui/common/UiColorSelectionView2;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowDxy:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextShadowRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMargin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcalcWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdip2px(Lcom/metamoji/ui/common/UiColorSelectionView2;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->dip2px(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdip2pxF(Lcom/metamoji/ui/common/UiColorSelectionView2;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->dip2pxF(F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    .line 364
    new-array v0, v0, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0xfa

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x1f4

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x2ee

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x3e8

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTickBrightness:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 262
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

    const/4 v1, 0x5

    .line 322
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    const/4 v2, -0x1

    .line 325
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    const/4 v3, 0x0

    .line 326
    iput-boolean v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTransposedMode:Z

    .line 338
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    const/16 v4, 0x38

    .line 341
    iput v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    .line 342
    iput v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    const/16 v4, 0x1e

    .line 343
    iput v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacing:I

    const/16 v4, 0x19

    .line 344
    iput v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacing:I

    const/16 v4, 0x14

    .line 345
    iput v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMargin:I

    .line 346
    iput v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMargin:I

    .line 347
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRoundRadius:I

    const v1, 0x3f333333    # 0.7f

    .line 348
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkMargin:F

    const v1, 0x404ccccd    # 3.2f

    .line 349
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkWidth:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 350
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowRadius:F

    const/high16 v1, 0x40200000    # 2.5f

    .line 351
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowDxy:F

    const/high16 v1, 0x40300000    # 2.75f

    .line 352
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 353
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowDxy:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 355
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    .line 356
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mLabelHeight:I

    .line 358
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHightByWidthRatio:F

    const v1, 0x3f0a3d71    # 0.54f

    .line 359
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacingRatio:F

    const v1, 0x3ee147ae    # 0.44f

    .line 360
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacingRatio:F

    const v1, 0x3f666666    # 0.9f

    .line 361
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMarginRatio:F

    const v1, 0x3f28f5c3    # 0.66f

    .line 362
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMarginRatio:F

    .line 366
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 367
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    .line 368
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteMarker:I

    .line 369
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    .line 370
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    .line 371
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelGradation:I

    .line 372
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    .line 373
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteGradation:Ljava/lang/String;

    .line 374
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteMarker:Ljava/lang/String;

    .line 375
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteChangeStyle:Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    .line 377
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    .line 378
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

    .line 652
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    .line 1136
    iput-boolean v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTouching:Z

    const-wide/16 v1, 0x0

    .line 1138
    iput-wide v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mScrollTick:J

    .line 1139
    iput-boolean v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    const/4 v1, 0x0

    .line 1223
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevX:F

    .line 1224
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevY:F

    .line 1225
    iput-boolean v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisallow:Z

    .line 1281
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 263
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 321
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

    const/4 v0, 0x5

    .line 322
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    const/4 v1, -0x1

    .line 325
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    const/4 v2, 0x0

    .line 326
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTransposedMode:Z

    .line 338
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    const/16 v3, 0x38

    .line 341
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    .line 342
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    const/16 v3, 0x1e

    .line 343
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacing:I

    const/16 v3, 0x19

    .line 344
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacing:I

    const/16 v3, 0x14

    .line 345
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMargin:I

    .line 346
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMargin:I

    .line 347
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRoundRadius:I

    const v3, 0x3f333333    # 0.7f

    .line 348
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkMargin:F

    const v3, 0x404ccccd    # 3.2f

    .line 349
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkWidth:F

    const/high16 v3, 0x40400000    # 3.0f

    .line 350
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowRadius:F

    const/high16 v3, 0x40200000    # 2.5f

    .line 351
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowDxy:F

    const/high16 v3, 0x40300000    # 2.75f

    .line 352
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    .line 353
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowDxy:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 355
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    .line 356
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mLabelHeight:I

    .line 358
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHightByWidthRatio:F

    const v3, 0x3f0a3d71    # 0.54f

    .line 359
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacingRatio:F

    const v3, 0x3ee147ae    # 0.44f

    .line 360
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacingRatio:F

    const v3, 0x3f666666    # 0.9f

    .line 361
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMarginRatio:F

    const v3, 0x3f28f5c3    # 0.66f

    .line 362
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMarginRatio:F

    .line 366
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 367
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    .line 368
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteMarker:I

    .line 369
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    .line 370
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    .line 371
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelGradation:I

    .line 372
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    .line 373
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteGradation:Ljava/lang/String;

    .line 374
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteMarker:Ljava/lang/String;

    .line 375
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteChangeStyle:Ljava/lang/String;

    .line 376
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    .line 378
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

    .line 652
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    .line 1136
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTouching:Z

    const-wide/16 v3, 0x0

    .line 1138
    iput-wide v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mScrollTick:J

    .line 1139
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    const/4 v3, 0x0

    .line 1223
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevX:F

    .line 1224
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevY:F

    .line 1225
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisallow:Z

    .line 1281
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 274
    sget-object p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 277
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_transpose:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTransposedMode:Z

    .line 280
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_per_line:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    .line 283
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_width:I

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    .line 286
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_height:I

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    int-to-float p3, p3

    .line 288
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHightByWidthRatio:F

    .line 292
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_vert_spacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    cmpl-float v0, p3, v3

    if-lez v0, :cond_0

    .line 294
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacingRatio:F

    .line 297
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_horz_spacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    cmpl-float v0, p3, v3

    if-lez v0, :cond_1

    .line 299
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacingRatio:F

    .line 302
    :cond_1
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_vert_margin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    cmpl-float v0, p3, v3

    if-lez v0, :cond_2

    .line 304
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacing:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMarginRatio:F

    .line 307
    :cond_2
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_cell_horz_margin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    cmpl-float v0, p3, v3

    if-lez v0, :cond_3

    .line 309
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacing:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMarginRatio:F

    .line 313
    :cond_3
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiColorSelectionView_color_type:I

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    .line 315
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private calcHeight()I
    .locals 3

    .line 961
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mLabelHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 963
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mLabelHeight:I

    .line 969
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcRowCount()I

    move-result v0

    .line 970
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacing:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mLabelHeight:I

    add-int/2addr v1, v0

    return v1
.end method

.method private calcRowCount()I
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length v0, v0

    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private calcWidth()I
    .locals 3

    .line 928
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacing:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private dip2px(F)I
    .locals 1

    .line 387
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private dip2pxF(F)F
    .locals 1

    .line 391
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    mul-float/2addr p1, v0

    return p1
.end method

.method private findTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 3

    .line 944
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 945
    check-cast p1, Landroid/widget/TextView;

    return-object p1

    .line 946
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 947
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 948
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private initColorTable()[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;
    .locals 17

    move-object/from16 v0, p0

    .line 2732
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2741
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 2743
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    .line 2744
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 2745
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    .line 2746
    iput v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteMarker:I

    .line 2748
    iput v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    .line 2749
    iput v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelGradation:I

    move-object v2, v9

    move-object v10, v2

    goto :goto_1

    .line 2753
    :cond_0
    iget v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    if-eq v2, v8, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    .line 2757
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardHistoryColorArray()[I

    move-result-object v2

    .line 2759
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->gradationHistoryColorArray()Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;

    move-result-object v10

    .line 2760
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 2761
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    .line 2762
    iput v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteMarker:I

    .line 2764
    iput v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    .line 2765
    iput v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelGradation:I

    goto :goto_1

    .line 2814
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardHistoryColorArray()[I

    move-result-object v2

    .line 2815
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 2818
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    .line 2819
    iput v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    goto :goto_0

    .line 2803
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->gradationFillHistoryColorArray()Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;

    move-result-object v10

    .line 2805
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    .line 2808
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    .line 2809
    iput v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelGradation:I

    move-object v2, v9

    goto :goto_1

    .line 2792
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardHistoryColorArray()[I

    move-result-object v2

    .line 2793
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 2797
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    goto :goto_0

    .line 2781
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->backgroundHistoryColorArray()[I

    move-result-object v2

    .line 2782
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 2786
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    goto :goto_0

    .line 2770
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardHistoryColorArray()[I

    move-result-object v2

    .line 2771
    iput v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    .line 2775
    iput v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    :goto_0
    move-object v10, v9

    .line 2826
    :goto_1
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    invoke-static {v11}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    .line 2827
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    invoke-static {v11}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteGradation:Ljava/lang/String;

    .line 2828
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteMarker:I

    invoke-static {v11}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteMarker:Ljava/lang/String;

    .line 2829
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    invoke-static {v11}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteChangeStyle:Ljava/lang/String;

    .line 2830
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelStandard:I

    invoke-static {v11}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    .line 2831
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorWheelGradation:I

    invoke-static {v11}, Lcom/metamoji/nt/NtInkManager;->getColorGroupId(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    .line 2832
    iput-object v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

    .line 2834
    iget v11, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorType:I

    if-eq v11, v8, :cond_17

    if-eq v11, v6, :cond_14

    if-eq v11, v5, :cond_11

    if-eq v11, v4, :cond_e

    if-eq v11, v3, :cond_a

    .line 2837
    new-array v3, v3, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v12, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2840
    array-length v13, v2

    if-lez v13, :cond_6

    move v13, v6

    goto :goto_2

    :cond_6
    move v13, v8

    :goto_2
    new-array v13, v13, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v11, v12, v13}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v11, v3, v7

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v12, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteGradation:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 2843
    iget-object v13, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    if-eqz v13, :cond_7

    iget-object v13, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    array-length v13, v13

    if-lez v13, :cond_7

    move v13, v5

    goto :goto_3

    :cond_7
    move v13, v6

    :goto_3
    new-array v13, v13, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v11, v12, v13}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v11, v3, v8

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v12, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteMarker:Ljava/lang/String;

    new-array v13, v8, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v11, v12, v13}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v11, v3, v6

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v12, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v11, v3, v5

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v12, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    invoke-direct {v11, v12, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v11, v3, v4

    .line 2856
    iget v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v9, v3, v9

    iget-object v9, v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v12, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v11, v9, v7

    if-eqz v2, :cond_8

    .line 2858
    array-length v9, v2

    if-lez v9, :cond_8

    .line 2859
    iget v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v9, v3, v9

    iget-object v9, v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v12, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v12, v5, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v11, v9, v8

    .line 2864
    :cond_8
    iget v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v12

    invoke-direct {v5, v9, v11, v12}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v5, v2, v7

    .line 2866
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->gradationColorArray()Lcom/metamoji/nt/NtInkManager$GradationTable;

    move-result-object v2

    .line 2867
    iget v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    aget-object v5, v3, v5

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v11, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name5:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/metamoji/nt/NtInkManager$GradationTable;->colors0:[I

    iget-object v2, v2, Lcom/metamoji/nt/NtInkManager$GradationTable;->colors1:[I

    invoke-direct {v9, v11, v12, v13, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I[I)V

    aput-object v9, v5, v8

    .line 2869
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 2871
    iget-object v2, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    if-eqz v2, :cond_9

    iget-object v2, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    array-length v2, v2

    if-lez v2, :cond_9

    .line 2872
    iget v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v5, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors0:[I

    iget-object v15, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors1:[I

    iget-object v4, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I[I[I)V

    aput-object v11, v2, v6

    .line 2877
    :cond_9
    iget v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteMarker:I

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name6:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->markerColorArray()[I

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v4, v2, v7

    return-object v3

    .line 2964
    :cond_a
    new-array v3, v5, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v10, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 2967
    array-length v11, v2

    if-lez v11, :cond_b

    move v11, v6

    goto :goto_4

    :cond_b
    move v11, v8

    :goto_4
    new-array v11, v11, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v4, v10, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v10, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteChangeStyle:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2970
    array-length v11, v2

    if-lez v11, :cond_c

    move v11, v5

    goto :goto_5

    :cond_c
    move v11, v6

    :goto_5
    new-array v11, v11, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v4, v10, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v10, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-direct {v4, v10, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v6

    .line 2977
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v10, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v9, v4, v7

    .line 2980
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v10, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v9, v4, v7

    .line 2981
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name6:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->markerColorArray()[I

    move-result-object v11

    invoke-direct {v7, v9, v10, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v7, v4, v8

    if-eqz v2, :cond_d

    .line 2983
    array-length v4, v2

    if-lez v4, :cond_d

    .line 2984
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v9, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v7, v4, v8

    .line 2985
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteChangeStyle:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v8, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v1, v5, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v7, v4, v6

    :cond_d
    return-object v3

    .line 2938
    :cond_e
    new-array v2, v5, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    new-instance v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteGradation:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 2941
    iget-object v11, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    if-eqz v11, :cond_f

    iget-object v11, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    array-length v11, v11

    if-lez v11, :cond_f

    goto :goto_6

    :cond_f
    move v5, v6

    :goto_6
    new-array v5, v5, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v3, v4, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-direct {v3, v4, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    invoke-direct {v3, v4, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v3, v2, v6

    .line 2951
    iget v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    aget-object v3, v2, v3

    iget-object v3, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v11

    invoke-direct {v4, v5, v9, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v4, v3, v7

    .line 2953
    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->gradationColorArray()Lcom/metamoji/nt/NtInkManager$GradationTable;

    move-result-object v3

    .line 2954
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v7, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name5:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v3, Lcom/metamoji/nt/NtInkManager$GradationTable;->colors0:[I

    iget-object v3, v3, Lcom/metamoji/nt/NtInkManager$GradationTable;->colors1:[I

    invoke-direct {v5, v7, v9, v11, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I[I)V

    aput-object v5, v4, v8

    .line 2956
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSetIdGradation_ColorPaletteGradation:Ljava/lang/String;

    if-eqz v10, :cond_10

    .line 2958
    iget-object v3, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    if-eqz v3, :cond_10

    iget-object v3, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    array-length v3, v3

    if-lez v3, :cond_10

    .line 2959
    iget v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteGradation:I

    aget-object v3, v2, v3

    iget-object v3, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v4, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors0:[I

    iget-object v15, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->colors1:[I

    iget-object v1, v10, Lcom/metamoji/nt/NtInkManager$StandardAndGradationTable;->type:[I

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I[I[I)V

    aput-object v11, v3, v6

    :cond_10
    return-object v2

    .line 2920
    :cond_11
    new-array v3, v6, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v10, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 2923
    array-length v11, v2

    if-lez v11, :cond_12

    goto :goto_7

    :cond_12
    move v6, v8

    :goto_7
    new-array v6, v6, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v4, v10, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-direct {v4, v6, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v8

    .line 2930
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v11

    invoke-direct {v6, v9, v10, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v6, v4, v7

    if-eqz v2, :cond_13

    .line 2932
    array-length v4, v2

    if-lez v4, :cond_13

    .line 2933
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v7, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v1, v5, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v6, v4, v8

    :cond_13
    return-object v3

    .line 2901
    :cond_14
    new-array v4, v6, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    new-instance v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v10, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 2904
    array-length v11, v2

    if-lez v11, :cond_15

    goto :goto_8

    :cond_15
    move v6, v8

    :goto_8
    new-array v6, v6, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v5, v10, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v5, v4, v7

    new-instance v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-direct {v5, v6, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v5, v4, v8

    .line 2911
    iget v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v5, v4, v5

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->backgroundColorArray()[I

    move-result-object v11

    invoke-direct {v6, v9, v10, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v6, v5, v7

    if-eqz v2, :cond_16

    .line 2913
    array-length v5, v2

    if-lez v5, :cond_16

    .line 2914
    iget v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v5, v4, v5

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v7, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v1, v3, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v6, v5, v8

    :cond_16
    return-object v4

    .line 2882
    :cond_17
    new-array v3, v6, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v10, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorPaletteStandard:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 2885
    array-length v11, v2

    if-lez v11, :cond_18

    goto :goto_9

    :cond_18
    move v6, v8

    :goto_9
    new-array v6, v6, [Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    invoke-direct {v4, v10, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-direct {v4, v6, v9}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;-><init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V

    aput-object v4, v3, v8

    .line 2892
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/metamoji/nt/NtInkManager;->standardColorArray()[I

    move-result-object v11

    invoke-direct {v6, v9, v10, v11}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v6, v4, v7

    if-eqz v2, :cond_19

    .line 2894
    array-length v4, v2

    if-lez v4, :cond_19

    .line 2895
    iget v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupColorPaletteStandard:I

    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    new-instance v6, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    sget v7, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_History:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v1, v5, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    aput-object v6, v4, v8

    :cond_19
    return-object v3
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .line 238
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindScroller:Landroid/widget/Scroller;

    .line 239
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$1;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindTask:Ljava/lang/Runnable;

    .line 253
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initColorTable()[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->createContents([Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Landroid/content/Context;)V

    .line 255
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionByCellSize()V

    return-void
.end method


# virtual methods
.method public canPageNext()Z
    .locals 3

    .line 840
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canPagePrev()Z
    .locals 3

    .line 819
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 820
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public createContents([Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Landroid/content/Context;)V
    .locals 2

    .line 402
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    .line 404
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    .line 405
    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Landroid/content/Context;)V

    .line 406
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->setSaveFromParentEnabled(Z)V

    .line 407
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method fitPageAfterScrolled()V
    .locals 5

    .line 1178
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getScrollX()I

    move-result v0

    .line 1179
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getWidth()I

    move-result v1

    .line 1180
    div-int v2, v0, v1

    .line 1181
    rem-int v3, v0, v1

    div-int/lit8 v4, v1, 0x2

    if-le v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1184
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindScroller:Landroid/widget/Scroller;

    mul-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1185
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->post(Ljava/lang/Runnable;)Z

    .line 1188
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getRealPageCount(I)I

    move-result v0

    .line 1189
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    if-eq v0, v1, :cond_1

    .line 1190
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    .line 1191
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

    if-eqz v1, :cond_1

    .line 1192
    invoke-interface {v1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;->onColorSetGroupChanged(I)V

    :cond_1
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    return v0
.end method

.method public getPageCount()I
    .locals 2

    .line 658
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    .line 660
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 661
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v1, :cond_0

    .line 662
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 666
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    return v0
.end method

.method public getRealPageCount(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 746
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    array-length v2, v2

    .line 753
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    if-ge v0, v2, :cond_2

    .line 747
    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v2, :cond_1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_2
    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getSelectedColor()I
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I

    move-result v0

    return v0
.end method

.method public getSelectedColor2()I
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGradationColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I

    move-result v0

    return v0
.end method

.method public getSelectedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isSelectColorAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isGradationColorSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$2;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    return-object v0

    .line 629
    :cond_0
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$3;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedGroup()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectIndex(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I

    move-result v0

    return v0
.end method

.method public getSelectedSet()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectSet(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleHeadPage()I
    .locals 2

    const/4 v0, 0x0

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getVisiblePageCount()I
    .locals 1

    const/4 v0, -0x1

    .line 725
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getVisiblePageCount(I)I

    move-result v0

    return v0
.end method

.method public getVisiblePageCount(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 729
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 730
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public hidePage(IZ)V
    .locals 1

    if-ltz p1, :cond_3

    .line 675
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_0

    goto :goto_1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-eq v0, p2, :cond_3

    .line 679
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    .line 680
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 682
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 691
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPageCount:I

    :cond_3
    :goto_1
    return-void
.end method

.method initPaletteDimensionBasedOnCellHeight(I)V
    .locals 4

    .line 868
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcRowCount()I

    move-result v0

    int-to-float p1, p1

    .line 869
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacingRatio:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMarginRatio:F

    mul-float/2addr v2, v3

    int-to-float v3, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    div-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    int-to-float p1, p1

    .line 870
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHightByWidthRatio:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    .line 871
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$dimen;->colorSelectionCellMinWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 872
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    if-ge v0, p1, :cond_0

    .line 873
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    int-to-float p1, p1

    .line 874
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHightByWidthRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionByCellSize()V

    return-void
.end method

.method initPaletteDimensionBasedOnCellWidth(I)V
    .locals 4

    int-to-float p1, p1

    .line 852
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacingRatio:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMarginRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellCountPerLine:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    .line 853
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$dimen;->colorSelectionCellMinWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 854
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    if-ge v0, p1, :cond_0

    .line 855
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    .line 860
    :cond_0
    iget p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHightByWidthRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    .line 861
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionByCellSize()V

    return-void
.end method

.method initPaletteDimensionByCellSize()V
    .locals 5

    .line 887
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacingRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHorzSpacing:I

    .line 888
    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacingRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellVertSpacing:I

    int-to-float v3, v1

    .line 889
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMarginRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSideMargin:I

    int-to-float v3, v2

    .line 890
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMarginRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTopMargin:I

    const/high16 v3, 0x40a00000    # 5.0f

    .line 891
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRoundRadius:I

    .line 892
    div-int/lit8 v4, v0, 0xa

    if-le v3, v4, :cond_0

    .line 893
    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRoundRadius:I

    .line 895
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 896
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDensity:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkMargin:F

    .line 897
    div-int/lit8 v3, v0, 0x6

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 898
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkMargin:F

    :cond_1
    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v1

    .line 900
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkWidth:F

    .line 901
    div-int/lit8 v3, v0, 0x4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 902
    iput v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mSelectMarkWidth:F

    .line 905
    :cond_2
    div-int/lit8 v0, v0, 0x2

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, v1

    .line 906
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowDxy:F

    int-to-float v0, v0

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 908
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowDxy:F

    :cond_3
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v1

    .line 910
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowRadius:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    .line 912
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTextShadowRadius:F

    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    .line 914
    iput v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowDxy:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 916
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowDxy:F

    :cond_5
    const/high16 v2, 0x40300000    # 2.75f

    mul-float/2addr v1, v2

    .line 918
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowRadius:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    .line 920
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCellShadowRadius:F

    :cond_6
    return-void
.end method

.method public isGradationColorSelected()Z
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmGradationColorSelected(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Z

    move-result v0

    return v0
.end method

.method public isPageHidden(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSelectColorAvailable()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectIndex(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1291
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1292
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1294
    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mShadowBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1244
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1246
    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevX:F

    sub-float v2, v0, v2

    .line 1247
    iget v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevY:F

    sub-float v3, v1, v3

    .line 1248
    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevX:F

    .line 1249
    iput v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevY:F

    .line 1250
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    .line 1253
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPagePrev()Z

    move-result v0

    goto :goto_0

    .line 1256
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPageNext()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1261
    :goto_0
    iget-boolean v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisallow:Z

    if-eq v0, v1, :cond_4

    .line 1262
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 1235
    :cond_3
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisallow:Z

    .line 1236
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisallow:Z

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevX:F

    .line 1238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mPrevY:F

    .line 1268
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->touchChanged(Landroid/view/MotionEvent;)V

    .line 1269
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1045
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1049
    iget p3, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_1

    iget-object p3, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object p3

    array-length p3, p3

    iget v1, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    if-le p3, v1, :cond_1

    iget-object p3, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object p3

    iget v1, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    aget-object p3, p3, v1

    iget-boolean p3, p3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    .line 1051
    :cond_1
    :goto_0
    iget-object p3, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->getGroupIndex(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    move p3, p5

    :goto_1
    sub-int/2addr p4, p2

    .line 1055
    iput-boolean p5, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    .line 1056
    iget p2, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getVisiblePageCount(I)I

    move-result p2

    mul-int/2addr p4, p2

    .line 1057
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setScrollX(I)V

    .line 1061
    iput-boolean v0, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    .line 1063
    iget p2, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    iget-object p4, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {p4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->getGroupIndex(Ljava/lang/String;)I

    move-result p4

    if-ne p2, p4, :cond_2

    .line 1065
    iget-object p2, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {p5}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectSet(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->ensureVisible(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 1068
    iget-object p2, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

    if-eqz p2, :cond_3

    .line 1069
    iget p3, p1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    invoke-interface {p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;->onColorSetGroupChanged(I)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 980
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 981
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 982
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 983
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    .line 990
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionBasedOnCellWidth(I)V

    move v7, v1

    move v8, v3

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ne v0, v5, :cond_1

    .line 999
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionBasedOnCellWidth(I)V

    move v7, v1

    move v6, v4

    :cond_1
    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_3

    .line 1002
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-nez v6, :cond_2

    .line 1004
    invoke-virtual {p0, v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionBasedOnCellWidth(I)V

    goto :goto_1

    :cond_2
    move v4, v6

    .line 1007
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v4

    :cond_3
    if-ne v0, v5, :cond_4

    .line 1016
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcWidth()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-nez v6, :cond_4

    .line 1018
    invoke-virtual {p0, v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->initPaletteDimensionBasedOnCellWidth(I)V

    :cond_4
    if-nez v7, :cond_5

    .line 1023
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcWidth()I

    move-result v7

    :cond_5
    if-nez v8, :cond_6

    .line 1026
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->calcHeight()I

    move-result v8

    .line 1028
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-virtual {v0, v7, v8}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->adjustChildSize(II)V

    .line 1030
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1031
    invoke-virtual {p0, v7, v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1110
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 1113
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    .line 1115
    const-string v0, "Parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1116
    const-string v0, "mSelectGroup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    const-string v1, "mSelectSet"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    const-string v2, "mSelectIndex"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1120
    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1081
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1084
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1086
    const-string v2, "Parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1087
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mSelectGroup"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectSet(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mSelectSet"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectIndex(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)I

    move-result v0

    const-string v2, "mSelectIndex"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mScrollTick:J

    .line 1156
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTimer:Lcom/metamoji/cm/UiTimer;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    if-nez p1, :cond_0

    .line 1157
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTimer:Lcom/metamoji/cm/UiTimer;

    .line 1158
    new-instance v1, Lcom/metamoji/ui/common/UiColorSelectionView2$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$4;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1277
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->touchChanged(Landroid/view/MotionEvent;)V

    .line 1278
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pageNext()V
    .locals 2

    .line 831
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(I)V

    :cond_1
    return-void
.end method

.method public pagePrev()V
    .locals 2

    .line 810
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-nez v1, :cond_0

    .line 812
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reservePage(I)V
    .locals 0

    .line 790
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    return-void
.end method

.method public selectItem(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public selectItemByColor(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    move-result p1

    return p1
.end method

.method public selectItemByColor(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IIZ)Z

    move-result p1

    return p1
.end method

.method public selectItemByColor(IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/high16 v2, -0x1000000

    or-int v3, p1, v2

    or-int v2, p2, v2

    .line 514
    iget-object v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v4

    .line 515
    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    .line 516
    aget-object v8, v4, v7

    iget-boolean v8, v8, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    const-string v9, ""

    if-eqz v8, :cond_2

    .line 517
    aget-object v8, v4, v7

    iget-object v8, v8, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {v0, v8, v9, v10, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    :cond_0
    move-object/from16 p2, v4

    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 520
    :cond_2
    aget-object v8, v4, v7

    iget-object v8, v8, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    const/4 v10, 0x1

    if-eqz v8, :cond_6

    .line 522
    array-length v9, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_0

    .line 523
    aget-object v12, v8, v11

    iget-object v12, v12, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    if-eqz v12, :cond_5

    .line 524
    aget-object v12, v8, v11

    iget-object v12, v12, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    .line 525
    aget-object v13, v8, v11

    iget-object v13, v13, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    .line 526
    aget-object v14, v8, v11

    iget-object v14, v14, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    .line 527
    array-length v15, v12

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v15, :cond_5

    move-object/from16 p2, v4

    .line 528
    aget v4, v14, v6

    if-eq v4, v10, :cond_3

    goto :goto_3

    .line 531
    :cond_3
    aget v4, v12, v6

    if-ne v4, v3, :cond_4

    aget v4, v13, v6

    if-ne v4, v2, :cond_4

    .line 533
    aget-object v2, p2, v7

    iget-object v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    aget-object v3, v8, v11

    iget-object v3, v3, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    return v10

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p2

    goto :goto_2

    :cond_5
    move-object/from16 p2, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    goto :goto_1

    :cond_6
    move-object/from16 p2, v4

    .line 542
    aget-object v4, p2, v7

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelGradation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    iget-object v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fputmSelectColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;I)V

    .line 544
    iget-object v4, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v4, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fputmSelectGradationColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;I)V

    .line 545
    aget-object v4, p2, v7

    iget-object v4, v4, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v9, v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    return v10

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, p2

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    return v6
.end method

.method public selectItemByColor(IZ)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 457
    iget-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v3

    .line 458
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_9

    .line 459
    aget-object v7, v3, v6

    iget-boolean v7, v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    const-string v8, ""

    if-eqz v7, :cond_0

    .line 460
    aget-object v7, v3, v6

    iget-object v7, v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-virtual {v0, v7, v8, v9, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto/16 :goto_6

    .line 463
    :cond_0
    aget-object v7, v3, v6

    iget-object v7, v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    if-eqz v7, :cond_7

    .line 465
    array-length v8, v7

    move v10, v5

    :goto_1
    if-ge v10, v8, :cond_8

    .line 466
    aget-object v11, v7, v10

    iget-object v11, v11, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    .line 467
    aget-object v12, v7, v10

    iget-object v12, v12, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    const v13, 0xffffff

    if-nez v12, :cond_3

    .line 468
    array-length v12, v11

    move v14, v5

    :goto_2
    if-ge v14, v12, :cond_2

    .line 469
    aget v15, v11, v14

    and-int/2addr v15, v13

    const/16 v16, 0x1

    and-int v9, v1, v13

    if-ne v15, v9, :cond_1

    .line 471
    aget-object v9, v3, v6

    iget-object v9, v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    aget-object v15, v7, v10

    iget-object v15, v15, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v9, v15, v14, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    return v16

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x1

    goto :goto_5

    :cond_3
    const/16 v16, 0x1

    .line 478
    aget-object v9, v7, v10

    iget-object v9, v9, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    .line 479
    array-length v12, v11

    move v14, v5

    :goto_3
    if-ge v14, v12, :cond_6

    .line 480
    aget v15, v9, v14

    move/from16 v17, v13

    if-eqz v15, :cond_4

    const/4 v13, 0x2

    if-eq v15, v13, :cond_4

    goto :goto_4

    .line 483
    :cond_4
    aget v13, v11, v14

    and-int v13, v13, v17

    and-int v15, v1, v17

    if-ne v13, v15, :cond_5

    .line 485
    aget-object v13, v3, v6

    iget-object v13, v13, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    aget-object v15, v7, v10

    iget-object v15, v15, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v13, v15, v14, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v13

    if-eqz v13, :cond_5

    return v16

    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v17

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/16 v16, 0x1

    .line 495
    aget-object v7, v3, v6

    iget-object v7, v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mGroupIdColorWheelStandard:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 496
    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v7, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fputmSelectColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;I)V

    .line 497
    aget-object v7, v3, v6

    iget-object v7, v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    return v16

    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    return v5
.end method

.method public selectItemByColor(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method

.method public selectItemByColor(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 562
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    .line 563
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 564
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IIZ)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setColorSetGroupChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

    return-void
.end method

.method public setPage(I)V
    .locals 1

    .line 762
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getVisiblePageCount(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 765
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(II)V

    return-void
.end method

.method public setPage(II)V
    .locals 1

    if-ltz p1, :cond_3

    .line 768
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmColorSetGroups(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    move-result-object v0

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 775
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 778
    :cond_2
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    .line 779
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getWidth()I

    move-result p1

    const/4 v0, 0x1

    .line 780
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    mul-int/2addr p1, p2

    .line 781
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setScrollX(I)V

    const/4 p1, 0x0

    .line 782
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    .line 784
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mColorSetGroupChangedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;

    if-eqz p1, :cond_3

    .line 785
    iget p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mCurrentPage:I

    invoke-interface {p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;->onColorSetGroupChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedPage()V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->-$$Nest$fgetmSelectGroup(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->getGroupIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(I)V

    return-void
.end method

.method public setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mContentView:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSetGroupsContainerView;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    return-void
.end method

.method public setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V
    .locals 1

    .line 2995
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$5;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3003
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$6;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$6;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3011
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$7;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$7;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiRadioContoller;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V

    .line 3022
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$8;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiRadioContoller;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setColorSetGroupChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSetGroupChanged;)V

    return-void
.end method

.method public setVisibleHeadPage()V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getVisibleHeadPage()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 712
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setPage(I)V

    return-void
.end method

.method touchChanged(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 1218
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTouching:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTouching:Z

    return-void
.end method
