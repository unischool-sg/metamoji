.class public Lcom/metamoji/ui/common/UiPlainSlider;
.super Landroid/view/View;
.source "UiPlainSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;,
        Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;,
        Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;
    }
.end annotation


# static fields
.field private static final DP_BALLOON_HEIGHT:I = 0x23

.field private static final DP_BALLOON_SPACING:I = 0x3

.field private static final DP_BALLOON_TEXT_SIZE:I = 0x12

.field private static final DP_BALLOON_WIDTH:I = 0x28

.field private static final DP_BAR_HEIGHT:I = 0x12

.field private static final DP_INNER_MARGIN_BOTTOM:I = 0x1e

.field private static final DP_INNER_MARGIN_LEFT:I = 0x1e

.field private static final DP_INNER_MARGIN_RIGHT:I = 0x1e

.field private static final DP_INNER_MARGIN_TOP:I = 0x19

.field private static final DP_LABEL_HEIGHT:I = 0x28

.field private static final DP_LABEL_TEXT_SIZE:I = 0xf

.field private static final DP_TICK_HEIGHT:I = 0x4

.field private static final DP_TICK_WIDTH:I = 0x2

.field private static final DP_TRACKER_HEIGHT:I = 0xa

.field private static final DP_TRACKER_WIDTH:I = 0xc

.field public static final POS_MAX:I = 0x3e8

.field public static final POS_MIN:I = 0x0

.field public static final POS_RANGE:I = 0x3e8


# instance fields
.field private mBalloonHeight:I

.field private mBalloonSpacing:I

.field private mBalloonTextColor:I

.field private mBalloonTextColorOnDefault:I

.field private mBalloonTextSize:I

.field private mBalloonWidth:I

.field private mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

.field private mBarHeight:I

.field private mBlockParentScroll:Z

.field private mColor0:I

.field private mColor1:I

.field private mCurrentPos:I

.field private mCurretnValue:I

.field private final mDecimalFormat:Ljava/text/DecimalFormat;

.field private mDefaultValue:I

.field private mDensity:F

.field private mDivision:I

.field private mInitialized:Z

.field private mInnerMarginBottom:I

.field private mInnerMarginLeft:I

.field private mInnerMarginRight:I

.field private mInnerMarginTop:I

.field private mInterceptionInhibiter:Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;

.field private mLabelBgColor:I

.field private mLabelColor:I

.field private mLabelHeight:I

.field private mLabelTextSize:I

.field private mNoValue:Z

.field private mNotifiedPos:I

.field private mOrgPos:I

.field private mPrecision:I

.field private mTickColor:I

.field private mTickHeight:I

.field private mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

.field private mTickWidth:I

.field private mTrackerHeight:I

.field private mTrackerWidth:I

.field private mValueChangedListener:Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;

.field private mValueChanging:Z

.field private mValueMax:I

.field private mValueMin:I

.field private mVertical:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBalloonHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBalloonSpacing(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonSpacing:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBalloonTextColor(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBalloonTextColorOnDefault(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColorOnDefault:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBalloonTextSize(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBalloonWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmColor0(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmColor1(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor1:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPos(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultValue(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDefaultValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDivision(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitialized(Lcom/metamoji/ui/common/UiPlainSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInitialized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInnerMarginBottom(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginBottom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInnerMarginLeft(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInnerMarginRight(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInnerMarginTop(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabelBgColor(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelBgColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabelColor(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabelTextSize(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelTextSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoValue(Lcom/metamoji/ui/common/UiPlainSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNoValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickColor(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickList(Lcom/metamoji/ui/common/UiPlainSlider;)[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrackerHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrackerWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValueMax(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValueMin(Lcom/metamoji/ui/common/UiPlainSlider;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomposeLabelString(Lcom/metamoji/ui/common/UiPlainSlider;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->composeLabelString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/metamoji/ui/common/UiPlainSlider;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 201
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    const/4 v1, 0x4

    .line 118
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    const v1, -0x2f2f30

    .line 119
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    .line 120
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor1:I

    .line 121
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    const/16 v1, 0x64

    .line 122
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    const/4 v1, 0x1

    .line 123
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mPrecision:I

    const/4 v1, -0x1

    .line 124
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDefaultValue:I

    .line 125
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNoValue:Z

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBlockParentScroll:Z

    .line 129
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelBgColor:I

    const v2, -0x7f7f80

    .line 130
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickColor:I

    const/4 v2, 0x3

    .line 131
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickWidth:I

    const/high16 v2, -0x1000000

    .line 149
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelColor:I

    .line 150
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColor:I

    const/16 v2, -0x7fb0

    .line 151
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColorOnDefault:I

    const/4 v2, 0x0

    .line 154
    iput-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 155
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    .line 156
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurretnValue:I

    .line 157
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNotifiedPos:I

    .line 158
    iput-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    .line 160
    iput-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInterceptionInhibiter:Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;

    .line 161
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChanging:Z

    .line 162
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mOrgPos:I

    .line 163
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInitialized:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 164
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDensity:F

    .line 355
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 203
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInitialized:Z

    .line 204
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->initMetrics(Landroid/content/Context;)V

    .line 206
    new-instance p1, Lcom/metamoji/ui/common/UiPlainSlider$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiPlainSlider$1;-><init>(Lcom/metamoji/ui/common/UiPlainSlider;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 117
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    const/4 v0, 0x4

    .line 118
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    const v0, -0x2f2f30

    .line 119
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    .line 120
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor1:I

    .line 121
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    const/16 v0, 0x64

    .line 122
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    const/4 v1, 0x1

    .line 123
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mPrecision:I

    const/4 v2, -0x1

    .line 124
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDefaultValue:I

    .line 125
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNoValue:Z

    .line 126
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBlockParentScroll:Z

    .line 129
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelBgColor:I

    const v3, -0x7f7f80

    .line 130
    iput v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickColor:I

    const/4 v3, 0x3

    .line 131
    iput v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickWidth:I

    const/high16 v3, -0x1000000

    .line 149
    iput v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelColor:I

    .line 150
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColor:I

    const/16 v3, -0x7fb0

    .line 151
    iput v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColorOnDefault:I

    const/4 v3, 0x0

    .line 154
    iput-object v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 155
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    .line 156
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurretnValue:I

    .line 157
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNotifiedPos:I

    .line 158
    iput-object v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    .line 160
    iput-object v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInterceptionInhibiter:Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;

    .line 161
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChanging:Z

    .line 162
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mOrgPos:I

    .line 163
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInitialized:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 164
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDensity:F

    .line 355
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 231
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInitialized:Z

    .line 232
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->initMetrics(Landroid/content/Context;)V

    .line 235
    sget-object p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 238
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_vertical:I

    iget-boolean v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    .line 241
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_division:I

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    .line 244
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_color0:I

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    .line 247
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_color1:I

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor1:I

    .line 250
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_value_min:I

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    .line 253
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_value_min:I

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    .line 254
    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    if-le v2, p3, :cond_0

    .line 256
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    .line 257
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    goto :goto_0

    :cond_0
    if-ne v2, p3, :cond_1

    add-int/2addr v2, v0

    .line 259
    iput v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    .line 262
    :cond_1
    :goto_0
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_value_precision:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mPrecision:I

    if-eq p3, v1, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_2

    .line 264
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "MadSlider: unknown precision %d"

    invoke-static {v0, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mPrecision:I

    .line 269
    :cond_2
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_label_text_color:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelColor:I

    .line 272
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_label_bg_color:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelBgColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelBgColor:I

    .line 275
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_balloon_text_color:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextColor:I

    .line 278
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_tick_color:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickColor:I

    .line 281
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_label_height:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    .line 284
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_bar_height:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBarHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBarHeight:I

    .line 287
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_tick_width:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickWidth:I

    .line 290
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_tick_height:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickHeight:I

    .line 293
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_tracker_width:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerWidth:I

    .line 296
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_tracker_height:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerHeight:I

    .line 299
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_label_text_size:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelTextSize:I

    .line 302
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_balloon_text_size:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextSize:I

    .line 305
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_balloon_height:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonHeight:I

    .line 308
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_balloon_width:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonWidth:I

    .line 311
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_balloon_spacing:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonSpacing:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonSpacing:I

    .line 314
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_inner_margin_left:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    .line 317
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_inner_margin_top:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    .line 320
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_inner_margin_right:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    .line 323
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_inner_margin_bottom:I

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginBottom:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginBottom:I

    .line 326
    sget p3, Lcom/metamoji/noteanytime/R$styleable;->UiPlainSlider_block_parent_scroll:I

    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBlockParentScroll:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBlockParentScroll:Z

    .line 328
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calcMeasuredSize(II)I
    .locals 2

    .line 413
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 414
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p2

    :cond_0
    return p1

    .line 422
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private composeLabelString(I)Ljava/lang/String;
    .locals 3

    .line 357
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mPrecision:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 361
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dip2px(F)I
    .locals 1

    .line 167
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDensity:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private fireValueChangedEvent(Z)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChangedListener:Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNoValue:Z

    if-nez v0, :cond_0

    .line 377
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNotifiedPos:I

    .line 378
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->pos2value(I)I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChangedListener:Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    invoke-interface {v1, v2, v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;->onValueChanged(IIZ)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 347
    new-instance p1, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    invoke-direct {p1, p0, p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;-><init>(Lcom/metamoji/ui/common/UiPlainSlider;Landroid/view/View;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    .line 348
    new-instance p1, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;

    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInterceptionInhibiter:Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;

    .line 349
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBlockParentScroll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->setThreshold(I)V

    .line 352
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInitialized:Z

    return-void
.end method

.method private onValueChanged(Z)V
    .locals 0

    .line 370
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    .line 371
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->fireValueChangedEvent(Z)V

    return-void
.end method


# virtual methods
.method public blockParentScroll(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBlockParentScroll:Z

    return-void
.end method

.method public getCurrentPos()I
    .locals 1

    .line 579
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    return v0
.end method

.method public getCurrentValue()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurretnValue:I

    return v0
.end method

.method public initMetrics(Landroid/content/Context;)V
    .locals 2

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDensity:F

    const/high16 p1, 0x42200000    # 40.0f

    .line 178
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    const/high16 v0, 0x41900000    # 18.0f

    .line 179
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBarHeight:I

    const/high16 v1, 0x41700000    # 15.0f

    .line 180
    invoke-direct {p0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelTextSize:I

    .line 181
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonTextSize:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 182
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickWidth:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 183
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickHeight:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 184
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerWidth:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 185
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTrackerHeight:I

    const/high16 v0, 0x420c0000    # 35.0f

    .line 187
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonHeight:I

    .line 188
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonWidth:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 189
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBalloonSpacing:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 190
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    .line 191
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    const/high16 v0, 0x41c80000    # 25.0f

    .line 192
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    .line 193
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->dip2px(F)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginBottom:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 804
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 385
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 386
    iget-object p2, p1, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->initDimmension()V

    .line 387
    iget p2, p1, Lcom/metamoji/ui/common/UiPlainSlider;->mNotifiedPos:I

    iget p3, p1, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    .line 388
    invoke-direct {p0, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->fireValueChangedEvent(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 394
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 397
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBarHeight:I

    add-int/2addr v0, v1

    .line 398
    iget-boolean v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    if-eqz v1, :cond_0

    .line 399
    iget p2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    add-int/2addr v0, p2

    iget p2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->calcMeasuredSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setMeasuredDimension(II)V

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginBottom:I

    add-int/2addr v0, v1

    invoke-direct {p0, p2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->calcMeasuredSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    .line 788
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 789
    check-cast p1, Lcom/metamoji/ui/common/UiIntParcelable;

    .line 790
    iget p1, p1, Lcom/metamoji/ui/common/UiIntParcelable;->value:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 779
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 780
    new-instance v0, Lcom/metamoji/ui/common/UiIntParcelable;

    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    invoke-direct {v0, v1}, Lcom/metamoji/ui/common/UiIntParcelable;-><init>(I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInterceptionInhibiter:Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiDragInterceptionInhibitor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 764
    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChanging:Z

    goto :goto_1

    .line 743
    :cond_1
    iget v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    iput v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mOrgPos:I

    .line 744
    iput-boolean v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChanging:Z

    .line 749
    :cond_2
    iget-boolean v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    .line 752
    iget-object v4, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz v3, :cond_3

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->getTop()I

    move-result v3

    sub-int/2addr p1, v3

    iget v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    sub-int/2addr p1, v3

    invoke-virtual {v4, p1}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->raw2pos(I)I

    move-result p1

    goto :goto_0

    .line 752
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->getLeft()I

    move-result v3

    sub-int/2addr p1, v3

    iget v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    sub-int/2addr p1, v3

    invoke-virtual {v4, p1}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->raw2pos(I)I

    move-result p1

    .line 754
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result v3

    xor-int/2addr v3, v2

    if-ne v0, v2, :cond_5

    .line 756
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChanging:Z

    .line 757
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    iget v3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mOrgPos:I

    if-eq v0, v3, :cond_4

    move v1, v2

    :cond_4
    move v3, v1

    .line 760
    :cond_5
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setEnabled(Z)V

    .line 761
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos(IZ)V

    :goto_1
    return v2

    .line 771
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pos2value(I)I
    .locals 5

    .line 673
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x3e8

    if-nez v0, :cond_2

    if-gtz p1, :cond_0

    .line 675
    iget p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    return p1

    :cond_0
    if-lt p1, v1, :cond_1

    .line 677
    iget p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    return p1

    .line 679
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    iget v2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    sub-int/2addr v2, v0

    mul-int/2addr p1, v2

    add-int/lit16 p1, p1, 0x1f4

    div-int/2addr p1, v1

    :goto_0
    add-int/2addr v0, p1

    return v0

    :cond_2
    const/4 v2, 0x0

    if-gtz p1, :cond_3

    .line 683
    aget-object p1, v0, v2

    iget p1, p1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    return p1

    :cond_3
    if-lt p1, v1, :cond_4

    .line 685
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget p1, p1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    return p1

    .line 687
    :cond_4
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_6

    .line 688
    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    .line 689
    aget-object v1, v1, v0

    .line 690
    iget v4, v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    if-gt v4, p1, :cond_5

    iget v4, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    if-gt p1, v4, :cond_5

    .line 691
    iget v0, v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    iget v2, v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    sub-int/2addr p1, v2

    iget v2, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    iget v4, v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    sub-int/2addr v2, v4

    mul-int/2addr p1, v2

    iget v2, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    iget v4, v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iget v1, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    iget v2, v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    sub-int/2addr v1, v2

    div-int/2addr p1, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    return v2
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBarHeight:I

    .line 488
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setCurrentPos(I)V
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos(IZ)V

    return-void
.end method

.method public setCurrentPos(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    move p1, v1

    .line 604
    :cond_1
    :goto_0
    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_3

    .line 605
    :cond_2
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    .line 606
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->pos2value(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurretnValue:I

    .line 607
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    :cond_3
    return-void

    .line 610
    :cond_4
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNoValue:Z

    .line 611
    iget-boolean p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChanging:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->onValueChanged(Z)V

    return-void
.end method

.method public setCurrentPos2(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    move p1, v0

    .line 625
    :cond_1
    :goto_0
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurrentPos:I

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(IZ)V

    return-void
.end method

.method public setCurrentValue(IZ)V
    .locals 0

    .line 641
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurretnValue:I

    .line 642
    iget p2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    if-lt p1, p2, :cond_0

    iget p2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    if-le p1, p2, :cond_1

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 645
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->value2pos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos2(I)V

    return-void
.end method

.method public setCurrentValue2(I)V
    .locals 1

    .line 652
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mCurretnValue:I

    .line 653
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    if-le p1, v0, :cond_1

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    .line 656
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->value2pos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos(I)V

    return-void
.end method

.method public setDefaultValue(I)V
    .locals 1

    .line 552
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDefaultValue:I

    if-eq v0, p1, :cond_0

    .line 553
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDefaultValue:I

    .line 554
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setDivision(I)V
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return-void

    .line 438
    :cond_0
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    return-void
.end method

.method public setInnerMargin(IIII)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    .line 513
    iput p2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginTop:I

    .line 514
    iput p3, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    .line 515
    iput p4, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginBottom:I

    .line 516
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setInnerMarginLeft(IZ)V
    .locals 0

    .line 522
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginLeft:I

    .line 523
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setInnerMarginRight(IZ)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mInnerMarginRight:I

    .line 530
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setLabelHeight(I)V
    .locals 0

    .line 469
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelHeight:I

    .line 470
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setLabelSize(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mLabelTextSize:I

    .line 499
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setNoValue()V
    .locals 1

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mNoValue:Z

    return-void
.end method

.method public setPrecision(I)V
    .locals 0

    .line 559
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mPrecision:I

    return-void
.end method

.method public setSliderColor(I)V
    .locals 0

    .line 458
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor1:I

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    .line 459
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setSliderColor(II)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor0:I

    .line 448
    iput p2, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mColor1:I

    .line 449
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTickHeight(I)V
    .locals 0

    .line 476
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickHeight:I

    .line 477
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mBar:Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V
    .locals 1

    .line 540
    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 541
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mDivision:I

    .line 542
    aget-object v0, p1, v0

    iget v0, v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    const/4 v0, 0x0

    .line 543
    aget-object p1, p1, v0

    iget p1, p1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    .line 544
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    if-ge v0, p1, :cond_0

    .line 546
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    .line 547
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    :cond_0
    return-void
.end method

.method public setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueChangedListener:Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mVertical:Z

    return-void
.end method

.method public value2pos(I)I
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    .line 714
    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMin:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-gt p1, v1, :cond_0

    return v3

    .line 708
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    mul-int/2addr p1, v2

    sub-int v2, v0, v1

    .line 711
    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    sub-int/2addr v0, v1

    div-int/2addr p1, v0

    return p1

    :cond_2
    if-gt p1, v1, :cond_3

    return v3

    .line 716
    :cond_3
    iget v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mValueMax:I

    if-lt p1, v1, :cond_4

    return v2

    .line 719
    :cond_4
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_6

    .line 720
    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider;->mTickList:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    .line 721
    aget-object v1, v1, v0

    .line 722
    iget v4, v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    if-gt v4, p1, :cond_5

    iget v4, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    if-gt p1, v4, :cond_5

    .line 723
    iget v0, v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    iget v3, v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    sub-int/2addr p1, v3

    iget v3, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    iget v4, v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    sub-int/2addr v3, v4

    mul-int/2addr p1, v3

    iget v3, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    iget v4, v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    iget v1, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    iget v2, v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    sub-int/2addr v1, v2

    div-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return v3
.end method
