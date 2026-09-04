.class public Lcom/metamoji/media/voice/ui/VcWaveView;
.super Landroid/view/View;
.source "VcWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;,
        Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;,
        Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final KEY_CURRENTTIME:Ljava/lang/String; = "currentTime"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SCALE:Ljava/lang/String; = "scale"

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"

.field private static final MARGIN:F = 20.0f

.field private static final MAX_HEIGHT_RATIO:F = 0.9f

.field private static final MAX_SCALE:F = 4.0f

.field private static final SAMPLES_PER_SEC:I = 0x14

.field private static final TOUCH_MARGIN:I = 0x14


# instance fields
.field public autoScrollCurrentToCenter:Z

.field private mCanEdit:Z

.field mCaptureTouchEvent:Z

.field private mCenterLinePaint:Landroid/graphics/Paint;

.field mContext:Landroid/content/Context;

.field private mCurrentLinePaint:Landroid/graphics/Paint;

.field private mCurrentLinePath:Landroid/graphics/Path;

.field private mCurrentTime:D

.field private mDefaultScale:D

.field private mDuration:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIndexId:Ljava/lang/String;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

.field private mMargin:I

.field private mMaxScale:D

.field private mMoveIndex:I

.field private mOffset:I

.field private mScale:D

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTicket:Ljava/lang/String;

.field mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

.field private mUnitWidth:I

.field private mWaveData:[D

.field private mWaveDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[D>;"
        }
    .end annotation
.end field

.field private mWaveListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

.field m_indexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/media/voice/ui/VcIndexView;",
            ">;"
        }
    .end annotation
.end field

.field private m_isShowIndexTimeLabel:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCanEdit(Lcom/metamoji/media/voice/ui/VcWaveView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCanEdit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/metamoji/media/voice/ui/VcWaveView;)D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDuration:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIndexId(Lcom/metamoji/media/voice/ui/VcWaveView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mIndexId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMoveIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffset(Lcom/metamoji/media/voice/ui/VcWaveView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveDatas(Lcom/metamoji/media/voice/ui/VcWaveView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveDatas:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_isShowIndexTimeLabel(Lcom/metamoji/media/voice/ui/VcWaveView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->m_isShowIndexTimeLabel:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;D)V
    .locals 0

    iput-wide p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMoveIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOffset(Lcom/metamoji/media/voice/ui/VcWaveView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaveData(Lcom/metamoji/media/voice/ui/VcWaveView;[D)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustOffset(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->adjustOffset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustParam(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->adjustParam()V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustScale(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->adjustScale()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateWaveDataWithAudioFile(Lcom/metamoji/media/voice/ui/VcWaveView;Ljava/lang/String;)[D
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->createWaveDataWithAudioFile(Ljava/lang/String;)[D

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->hideTimeBaloon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->showTimeBaloon(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->updateCurrentTime()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveDatas:Ljava/util/Map;

    const/4 p2, 0x1

    .line 130
    iput-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 131
    iput-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCanEdit:Z

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMoveIndex:I

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCaptureTouchEvent:Z

    .line 487
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTempRect:Landroid/graphics/Rect;

    .line 143
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->setFocusable(Z)V

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mLinePaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$color;->vc_wave_line:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCenterLinePaint:Landroid/graphics/Paint;

    .line 151
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCenterLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$color;->vc_wave_center_line:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePaint:Landroid/graphics/Paint;

    .line 154
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$color;->vc_wave_current_line:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    .line 163
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/metamoji/media/voice/ui/VcWaveView$1;

    invoke-direct {v2, p0}, Lcom/metamoji/media/voice/ui/VcWaveView$1;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 173
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/metamoji/media/voice/ui/VcWaveView$2;

    invoke-direct {v2, p0}, Lcom/metamoji/media/voice/ui/VcWaveView$2;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 194
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDefaultScale:D

    const/high16 v1, 0x40800000    # 4.0f

    .line 195
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMaxScale:D

    const/high16 v1, 0x41a00000    # 20.0f

    .line 196
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    .line 198
    iget-wide v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDefaultScale:D

    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    .line 199
    iput v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    .line 202
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mUnitWidth:I

    if-ge p1, p2, :cond_0

    .line 204
    iput p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mUnitWidth:I

    .line 207
    :cond_0
    new-instance p1, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;Lcom/metamoji/media/voice/ui/VcWaveView-IA;)V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->m_indexViews:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustOffset()V
    .locals 6

    .line 443
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 444
    iput v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    return-void

    .line 446
    :cond_0
    array-length v0, v0

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getMeasuredWidth()I

    move-result v0

    int-to-double v4, v0

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 447
    iget v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    if-le v2, v0, :cond_1

    .line 448
    iput v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    .line 450
    :cond_1
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    if-gez v0, :cond_2

    .line 451
    iput v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    :cond_2
    return-void
.end method

.method private adjustParam()V
    .locals 0

    .line 457
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->adjustScale()V

    .line 458
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->adjustOffset()V

    return-void
.end method

.method private adjustScale()V
    .locals 6

    .line 428
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDefaultScale:D

    .line 429
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    array-length v4, v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 434
    :cond_0
    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    .line 435
    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    .line 437
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMaxScale:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 438
    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    :cond_2
    return-void
.end method

.method private computeDoubles(Lcom/ringdroid/soundfile/SoundFile;)[D
    .locals 24

    .line 594
    invoke-virtual/range {p1 .. p1}, Lcom/ringdroid/soundfile/SoundFile;->getNumFrames()I

    move-result v0

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/ringdroid/soundfile/SoundFile;->getFrameGains()[I

    move-result-object v1

    .line 598
    new-array v2, v0, [D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 600
    aget v1, v1, v5

    int-to-double v7, v1

    aput-wide v7, v2, v5

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 602
    aget v7, v1, v5

    int-to-double v7, v7

    aput-wide v7, v2, v5

    .line 603
    aget v1, v1, v6

    int-to-double v7, v1

    aput-wide v7, v2, v6

    goto :goto_1

    :cond_1
    if-le v0, v7, :cond_3

    .line 605
    aget v7, v1, v5

    int-to-double v7, v7

    div-double/2addr v7, v3

    aget v9, v1, v6

    int-to-double v9, v9

    div-double/2addr v9, v3

    add-double/2addr v7, v9

    aput-wide v7, v2, v5

    move v7, v6

    :goto_0
    add-int/lit8 v8, v0, -0x1

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, -0x1

    .line 609
    aget v8, v1, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    aget v12, v1, v7

    int-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v8, v12

    add-int/lit8 v12, v7, 0x1

    aget v13, v1, v12

    int-to-double v13, v13

    div-double/2addr v13, v10

    add-double/2addr v8, v13

    aput-wide v8, v2, v7

    move v7, v12

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v0, -0x2

    .line 614
    aget v7, v1, v7

    int-to-double v9, v7

    div-double/2addr v9, v3

    aget v1, v1, v8

    int-to-double v11, v1

    div-double/2addr v11, v3

    add-double/2addr v9, v11

    aput-wide v9, v2, v8

    :cond_3
    :goto_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move v1, v5

    move-wide v9, v7

    :goto_2
    if-ge v1, v0, :cond_5

    .line 622
    aget-wide v11, v2, v1

    cmpl-double v13, v11, v9

    if-lez v13, :cond_4

    move-wide v9, v11

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-wide v11, 0x406fe00000000000L    # 255.0

    cmpl-double v1, v9, v11

    if-lez v1, :cond_6

    div-double v9, v11, v9

    goto :goto_3

    :cond_6
    move-wide v9, v7

    :goto_3
    const/16 v1, 0x100

    .line 633
    new-array v1, v1, [I

    move v15, v5

    const-wide/16 v16, 0x0

    :goto_4
    if-ge v15, v0, :cond_a

    .line 635
    aget-wide v18, v2, v15

    move-wide/from16 v20, v3

    mul-double v3, v18, v9

    double-to-int v3, v3

    if-gez v3, :cond_7

    move v3, v5

    :cond_7
    const/16 v4, 0xff

    if-le v3, v4, :cond_8

    move v3, v4

    :cond_8
    move/from16 v18, v6

    int-to-double v5, v3

    cmpl-double v19, v5, v16

    if-lez v19, :cond_9

    move-wide/from16 v16, v5

    .line 647
    :cond_9
    aget v5, v1, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v3

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    move-wide/from16 v3, v20

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    move-wide/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    :goto_5
    cmpg-double v15, v5, v11

    if-gez v15, :cond_b

    .line 653
    div-int/lit8 v15, v0, 0x14

    if-ge v3, v15, :cond_b

    double-to-int v15, v5

    .line 654
    aget v15, v1, v15

    add-int/2addr v3, v15

    add-double/2addr v5, v7

    goto :goto_5

    :cond_b
    move-wide/from16 v11, v16

    const/4 v3, 0x0

    :goto_6
    cmpl-double v15, v11, v20

    if-lez v15, :cond_c

    .line 660
    div-int/lit8 v15, v0, 0x64

    if-ge v3, v15, :cond_c

    double-to-int v15, v11

    .line 661
    aget v15, v1, v15

    add-int/2addr v3, v15

    sub-double/2addr v11, v7

    goto :goto_6

    :cond_c
    sub-double/2addr v11, v5

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v1

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/ringdroid/soundfile/SoundFile;->getSampleRate()I

    move-result v3

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x14

    move-wide/from16 v16, v5

    int-to-double v4, v1

    move-wide/from16 v18, v7

    int-to-double v7, v3

    div-double/2addr v4, v7

    double-to-int v1, v4

    .line 671
    new-array v3, v1, [D

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v5, v1, :cond_13

    add-int/lit8 v4, v5, 0x1

    mul-int v6, v4, v0

    int-to-double v6, v6

    const-wide/16 v20, 0x0

    int-to-double v13, v1

    div-double/2addr v6, v13

    double-to-int v6, v6

    if-ne v15, v6, :cond_f

    .line 677
    aget-wide v6, v2, v15

    mul-double/2addr v6, v9

    sub-double v6, v6, v16

    div-double/2addr v6, v11

    cmpg-double v8, v6, v20

    if-gez v8, :cond_d

    move-wide/from16 v6, v20

    goto :goto_8

    :cond_d
    cmpl-double v8, v6, v18

    if-lez v8, :cond_e

    move-wide/from16 v6, v18

    :cond_e
    :goto_8
    mul-double/2addr v6, v6

    .line 683
    aput-wide v6, v3, v5

    goto :goto_b

    :cond_f
    move v7, v15

    move-wide/from16 v13, v20

    :goto_9
    if-ge v7, v6, :cond_12

    .line 686
    aget-wide v22, v2, v7

    mul-double v22, v22, v9

    sub-double v22, v22, v16

    div-double v22, v22, v11

    cmpg-double v8, v22, v20

    if-gez v8, :cond_10

    move-wide/from16 v22, v20

    goto :goto_a

    :cond_10
    cmpl-double v8, v22, v18

    if-lez v8, :cond_11

    move-wide/from16 v22, v18

    :cond_11
    :goto_a
    mul-double v22, v22, v22

    add-double v13, v13, v22

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_12
    sub-int v7, v6, v15

    int-to-double v7, v7

    div-double/2addr v13, v7

    .line 694
    aput-wide v13, v3, v5

    move v15, v6

    :goto_b
    move v5, v4

    goto :goto_7

    :cond_13
    return-object v3
.end method

.method private createWaveData(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    if-eqz p1, :cond_5

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveDatas:Ljava/util/Map;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveDatas:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-eqz v1, :cond_1

    .line 277
    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    .line 278
    monitor-exit v0

    return-void

    .line 280
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 287
    :cond_2
    new-instance v1, Lcom/metamoji/media/voice/ui/VcWaveView$3;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/ui/VcWaveView$3;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 295
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 302
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 308
    new-instance v2, Lcom/metamoji/media/voice/ui/VcWaveView$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView$4;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 280
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method private createWaveDataWithAudioFile(Ljava/lang/String;)[D
    .locals 1

    const/4 v0, 0x0

    .line 325
    :try_start_0
    invoke-static {p1, v0}, Lcom/ringdroid/soundfile/SoundFile;->create(Ljava/lang/String;Lcom/ringdroid/soundfile/SoundFile$ProgressListener;)Lcom/ringdroid/soundfile/SoundFile;

    move-result-object p1

    .line 326
    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->computeDoubles(Lcom/ringdroid/soundfile/SoundFile;)[D

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ringdroid/soundfile/SoundFile$InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private drawWave(Landroid/graphics/Canvas;II)V
    .locals 19

    move-object/from16 v0, p0

    .line 532
    div-int/lit8 v6, p3, 0x2

    add-int/lit8 v1, v6, -0x1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 534
    iget v1, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    iget v2, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 535
    iget v2, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    iget v3, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 540
    :cond_0
    iget v3, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mUnitWidth:I

    mul-int/lit8 v4, v3, 0x2

    div-int/2addr v1, v4

    mul-int/lit8 v4, v3, 0x2

    .line 541
    div-int v8, v2, v4

    .line 543
    iget-wide v4, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    mul-int/lit8 v3, v3, 0x2

    int-to-double v2, v3

    div-double v9, v4, v2

    int-to-double v2, v1

    div-double/2addr v2, v9

    double-to-int v2, v2

    int-to-double v3, v8

    div-double/2addr v3, v9

    double-to-int v3, v3

    .line 547
    iget-object v4, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    array-length v5, v4

    if-le v3, v5, :cond_1

    .line 548
    array-length v3, v4

    :cond_1
    move v11, v3

    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    :goto_0
    if-ge v2, v8, :cond_6

    add-int/lit8 v12, v2, 0x1

    int-to-double v3, v12

    div-double/2addr v3, v9

    double-to-int v13, v3

    if-lt v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v9, v3

    const-wide/16 v4, 0x0

    if-lez v3, :cond_4

    int-to-double v14, v1

    mul-double/2addr v14, v9

    .line 563
    iget-object v3, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    aget-wide v16, v3, v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v11, :cond_3

    .line 564
    aget-wide v4, v3, v1

    :cond_3
    sub-double v4, v4, v16

    move-wide/from16 p2, v4

    int-to-double v3, v2

    sub-double/2addr v3, v14

    mul-double v4, p2, v3

    div-double/2addr v4, v9

    add-double v16, v16, v4

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_1
    if-ge v3, v13, :cond_5

    .line 569
    iget-object v14, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    aget-wide v14, v14, v3

    add-double/2addr v4, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    sub-int v1, v13, v1

    int-to-double v14, v1

    div-double v16, v4, v14

    :goto_2
    int-to-double v3, v7

    mul-double v3, v3, v16

    double-to-int v1, v3

    sub-int v3, v6, v1

    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v1

    .line 576
    iget-object v5, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/media/voice/ui/VcWaveView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move v2, v12

    move v1, v13

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 1

    .line 212
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTimeBaloon()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showTimeBaloon(D)V
    .locals 2

    .line 705
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    if-nez v1, :cond_1

    .line 710
    sget v1, Lcom/metamoji/noteanytime/R$id;->VcTimeBalloonView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    .line 712
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result v0

    int-to-float v0, v0

    .line 713
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->setPos(Lcom/metamoji/media/voice/ui/VcWaveView;FD)V

    .line 714
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 715
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTimeBalloon:Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCurrentTime()V
    .locals 5

    .line 870
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 874
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    if-eqz v1, :cond_1

    .line 875
    iget-wide v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    div-int/lit8 v0, v0, 0x2

    int-to-double v3, v0

    sub-double/2addr v1, v3

    double-to-int v0, v1

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    .line 877
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->adjustParam()V

    .line 878
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-void
.end method


# virtual methods
.method public didDownloadCacheFileToPlay(Z)V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveDatas:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->createWaveData(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 939
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->updateWaveIndexes(Ljava/util/Map;Z)V

    return-void
.end method

.method protected drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 7

    .line 586
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mUnitWidth:I

    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    iget v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    add-int/2addr p2, v1

    int-to-float v2, p2

    int-to-float v3, p3

    add-int/2addr p2, v0

    int-to-float v4, p2

    int-to-float v5, p4

    move-object v1, p1

    move-object v6, p5

    .line 587
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getLocationFromTime(D)I
    .locals 2

    .line 476
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iget p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    add-int/2addr p1, p2

    return p1
.end method

.method public getOffset()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    return v0
.end method

.method public getScale()D
    .locals 2

    .line 424
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    return-wide v0
.end method

.method public getTimeFromLocation(I)D
    .locals 6

    .line 467
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mMargin:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 491
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 493
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 494
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getMeasuredWidth()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getMeasuredHeight()I

    move-result v1

    .line 496
    div-int/lit8 v2, v1, 0x2

    .line 498
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveData:[D

    if-eqz v3, :cond_0

    .line 499
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->drawWave(Landroid/graphics/Canvas;II)V

    :cond_0
    int-to-float v6, v2

    int-to-float v7, v0

    .line 503
    iget-object v9, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCenterLinePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move v8, v6

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 505
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    if-eqz p1, :cond_1

    .line 506
    invoke-interface {p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformDraw()V

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->m_indexViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 510
    invoke-virtual {v2, p0, v4, v0, v1}, Lcom/metamoji/media/voice/ui/VcIndexView;->draw(Lcom/metamoji/media/voice/ui/VcWaveView;Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 513
    :cond_2
    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result p1

    int-to-float p1, p1

    .line 516
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 517
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float v3, p1, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    add-float v6, p1, v2

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v7, p1, v5

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    add-int/lit8 v8, v1, -0x5

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 522
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 523
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    sub-float/2addr p1, v5

    invoke-virtual {v0, p1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 524
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 525
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 528
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 356
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 357
    check-cast p1, Landroid/os/Bundle;

    .line 358
    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 359
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    .line 360
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    .line 361
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    .line 362
    const-string v0, "currentTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    .line 363
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDuration:D

    .line 365
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->createWaveData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    const-string v1, "parent"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    const-string/jumbo v1, "ticket"

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v1, "scale"

    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 349
    const-string v1, "offset"

    iget v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v1, "currentTime"

    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 351
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDuration:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 378
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCaptureTouchEvent:Z

    if-nez v0, :cond_1

    return v1

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    if-nez v0, :cond_2

    return v1

    .line 390
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->hideTimeBaloon()V

    goto :goto_0

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformTouchMove(FF)V

    goto :goto_0

    .line 399
    :cond_4
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    invoke-interface {p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformTouchEnd()V

    const/4 p1, 0x0

    .line 400
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCaptureTouchEvent:Z

    goto :goto_0

    .line 392
    :cond_5
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformTouchStart(FF)V

    .line 393
    iput-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCaptureTouchEvent:Z

    :goto_0
    return v1
.end method

.method removeIndexViews()V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->m_indexViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setListener(Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 410
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mOffset:I

    .line 411
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-void
.end method

.method public setScale(D)V
    .locals 0

    .line 419
    iput-wide p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mScale:D

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-void
.end method

.method public setWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mWaveListener:Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 6

    .line 230
    iput-boolean p3, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCanEdit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 232
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mIndexId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p4, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    return v1

    .line 242
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p4

    .line 244
    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mIndexId:Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mTicket:Ljava/lang/String;

    .line 246
    invoke-virtual {p4, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getDuration(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDuration:D

    if-nez v2, :cond_4

    .line 250
    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->createWaveData(Ljava/lang/String;)V

    .line 251
    iget-wide v4, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mDefaultScale:D

    invoke-virtual {p0, v4, v5}, Lcom/metamoji/media/voice/ui/VcWaveView;->setScale(D)V

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v2, :cond_6

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    return v0

    .line 256
    :cond_6
    :goto_3
    invoke-virtual {p4, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 257
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/media/voice/ui/VcWaveView;->updateWaveIndexes(Ljava/util/Map;Z)V

    return v0
.end method

.method public updateCurrentTime(D)V
    .locals 0

    .line 864
    iput-wide p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCurrentTime:D

    .line 865
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->updateCurrentTime()V

    return-void
.end method

.method public updateEditable(Z)V
    .locals 2

    .line 943
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->mCanEdit:Z

    .line 944
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView;->m_indexViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 945
    invoke-virtual {v1, p1}, Lcom/metamoji/media/voice/ui/VcIndexView;->setCanEdit(Z)V

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-void
.end method

.method updateWaveIndexes(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 890
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcWaveView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView$5;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
