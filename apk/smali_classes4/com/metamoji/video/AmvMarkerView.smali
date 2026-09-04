.class public final Lcom/metamoji/video/AmvMarkerView;
.super Landroid/view/View;
.source "AmvMarkerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvMarkerView$Companion;,
        Lcom/metamoji/video/AmvMarkerView$SavedState;,
        Lcom/metamoji/video/AmvMarkerView$TouchManager;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 ^2\u00020\u0001:\u0003^_`B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010%\u001a\u00020\u000e2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\'2\u0008\u0008\u0002\u0010(\u001a\u00020)J\u0018\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u0007H\u0014J\u0010\u0010<\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\"H\u0002J\u0010\u0010>\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\"H\u0002J\u0018\u0010A\u001a\u00020\u001b2\u0006\u0010B\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\"H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0002J\u0010\u0010D\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020FH\u0014J(\u0010G\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u0007H\u0014J\u0010\u0010L\u001a\u00020)2\u0006\u0010=\u001a\u00020\"H\u0002J\u0018\u0010M\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\"2\u0008\u0010N\u001a\u0004\u0018\u00010\rJ\u0018\u0010O\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\"2\u0008\u0010N\u001a\u0004\u0018\u00010\rJ\u0018\u0010P\u001a\u00020)2\u0006\u0010Q\u001a\u00020\"2\u0008\u0010N\u001a\u0004\u0018\u00010\rJ\u0018\u0010R\u001a\u00020)2\u0006\u0010Q\u001a\u00020\"2\u0008\u0010N\u001a\u0004\u0018\u00010\rJ\u0018\u0010S\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\"2\u0008\u0010N\u001a\u0004\u0018\u00010\rJ\u0018\u0010T\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\"2\u0008\u0010N\u001a\u0004\u0018\u00010\rJ\u000e\u0010U\u001a\u00020\u000e2\u0006\u0010V\u001a\u00020\"J\u000e\u0010W\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\"J\u0006\u0010X\u001a\u00020\u000eJ\u000e\u0010X\u001a\u00020\u000e2\u0006\u0010Y\u001a\u00020\"J\u0008\u0010Z\u001a\u00020[H\u0014J\u0012\u0010\\\u001a\u00020\u000e2\u0008\u0010]\u001a\u0004\u0018\u00010[H\u0014R.\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000e0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R.\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000e0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R.\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000e0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012R4\u0010\u0019\u001a\u001c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000e0\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\"X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0008\u0012\u0004\u0012\u00020\"06X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u00107\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u00108R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006a"
    }
    d2 = {
        "Lcom/metamoji/video/AmvMarkerView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "markerAddedListener",
        "Lcom/metamoji/lib/utils/FuncyListener2;",
        "",
        "",
        "",
        "getMarkerAddedListener",
        "()Lcom/metamoji/lib/utils/FuncyListener2;",
        "setMarkerAddedListener",
        "(Lcom/metamoji/lib/utils/FuncyListener2;)V",
        "markerRemovedListener",
        "getMarkerRemovedListener",
        "setMarkerRemovedListener",
        "markerSelectedListener",
        "getMarkerSelectedListener",
        "setMarkerSelectedListener",
        "markerContextQueryListener",
        "Lcom/metamoji/lib/utils/FuncyListener3;",
        "",
        "getMarkerContextQueryListener",
        "()Lcom/metamoji/lib/utils/FuncyListener3;",
        "setMarkerContextQueryListener",
        "(Lcom/metamoji/lib/utils/FuncyListener3;)V",
        "markers",
        "",
        "",
        "getMarkers",
        "()Ljava/util/List;",
        "setMarkers",
        "v",
        "",
        "redraw",
        "",
        "mDrMarker",
        "Landroid/graphics/drawable/Drawable;",
        "mDrMarkerHL",
        "mNaturalHeight",
        "mMarkerWidth",
        "mMarkerHitLuckyZone",
        "mViewWidth",
        "mLeftInert",
        "mRightInert",
        "mMinMarkerSpan",
        "mTotalRange",
        "mMarkers",
        "Lcom/metamoji/lib/utils/SortedList;",
        "mHighLightMarker",
        "Ljava/lang/Long;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "getMarkerLeft",
        "marker",
        "getMarkerCenter",
        "mListPos",
        "Lcom/metamoji/lib/utils/SortedList$Position;",
        "hitTestSub",
        "xPos",
        "hitTestIndex",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "canAddMarker",
        "addMarker",
        "clientData",
        "removeMarker",
        "nextMark",
        "current",
        "prevMark",
        "selectMarker",
        "contextMenuOn",
        "resetWithTotalRange",
        "duration",
        "setHighLightMarker",
        "resetHighLightMarker",
        "delay",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "onRestoreInstanceState",
        "state",
        "Companion",
        "TouchManager",
        "SavedState",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/video/AmvMarkerView$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final mDrMarker:Landroid/graphics/drawable/Drawable;

.field private final mDrMarkerHL:Landroid/graphics/drawable/Drawable;

.field private mHighLightMarker:Ljava/lang/Long;

.field private final mLeftInert:I

.field private final mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

.field private final mMarkerHitLuckyZone:I

.field private final mMarkerWidth:I

.field private final mMarkers:Lcom/metamoji/lib/utils/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/SortedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinMarkerSpan:J

.field private final mNaturalHeight:I

.field private final mRightInert:I

.field private mTotalRange:J

.field private mViewWidth:I

.field private markerAddedListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private markerContextQueryListener:Lcom/metamoji/lib/utils/FuncyListener3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener3<",
            "Ljava/lang/Double;",
            "Ljava/lang/Float;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private markerRemovedListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private markerSelectedListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvMarkerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvMarkerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvMarkerView;->Companion:Lcom/metamoji/video/AmvMarkerView$Companion;

    .line 31
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvMarkerView;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvMarkerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvMarkerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerAddedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 34
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerRemovedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 35
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerSelectedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 36
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener3;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener3;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerContextQueryListener:Lcom/metamoji/lib/utils/FuncyListener3;

    const-wide/16 v0, 0x64

    .line 64
    iput-wide v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMinMarkerSpan:J

    const-wide/16 v0, 0x3e8

    .line 65
    iput-wide v0, p0, Lcom/metamoji/video/AmvMarkerView;->mTotalRange:J

    .line 66
    new-instance v0, Lcom/metamoji/lib/utils/SortedList;

    new-instance v1, Lcom/metamoji/video/AmvMarkerView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/metamoji/video/AmvMarkerView$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/metamoji/lib/utils/SortedList;-><init>(ILkotlin/jvm/functions/Function2;Z)V

    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/R$styleable;->AmvMarkerView:[I

    invoke-virtual {v0, p2, v1, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    sget p3, Lcom/metamoji/video/R$styleable;->AmvMarkerView_marker:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_0

    sget p3, Lcom/metamoji/video/R$drawable;->ic_marker_pin:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    iput-object p3, p0, Lcom/metamoji/video/AmvMarkerView;->mDrMarker:Landroid/graphics/drawable/Drawable;

    .line 74
    sget v0, Lcom/metamoji/video/R$styleable;->AmvMarkerView_markerHighLight:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Lcom/metamoji/video/R$drawable;->ic_marker_pin_hl:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_1
    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mDrMarkerHL:Landroid/graphics/drawable/Drawable;

    .line 75
    sget v0, Lcom/metamoji/video/R$styleable;->AmvMarkerView_leftInert:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/metamoji/video/AmvMarkerView;->mLeftInert:I

    .line 76
    sget v0, Lcom/metamoji/video/R$styleable;->AmvMarkerView_rightInert:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/metamoji/video/AmvMarkerView;->mRightInert:I

    .line 77
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerWidth:I

    const/16 v1, 0x18

    .line 78
    invoke-static {p1, v1}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerHitLuckyZone:I

    .line 79
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvMarkerView;->mNaturalHeight:I

    .line 80
    sget p1, Lcom/metamoji/video/R$styleable;->AmvMarkerView_saveFromParent:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvMarkerView;->setSaveFromParentEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    new-instance p1, Lcom/metamoji/video/AmvMarkerView$TouchManager;

    invoke-direct {p1, p0}, Lcom/metamoji/video/AmvMarkerView$TouchManager;-><init>(Lcom/metamoji/video/AmvMarkerView;)V

    .line 86
    move-object p2, p1

    check-cast p2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p2}, Lcom/metamoji/video/AmvMarkerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    move-object p2, p1

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/metamoji/video/AmvMarkerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    check-cast p1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvMarkerView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    new-instance p1, Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/SortedList$Position;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    return-void

    :catchall_0
    move-exception p1

    .line 82
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvMarkerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/video/AmvMarkerView;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMMarkerWidth$p(Lcom/metamoji/video/AmvMarkerView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerWidth:I

    return p0
.end method

.method public static final synthetic access$getMMarkers$p(Lcom/metamoji/video/AmvMarkerView;)Lcom/metamoji/lib/utils/SortedList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    return-object p0
.end method

.method public static final synthetic access$getMNaturalHeight$p(Lcom/metamoji/video/AmvMarkerView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/metamoji/video/AmvMarkerView;->mNaturalHeight:I

    return p0
.end method

.method public static final synthetic access$hitTestIndex(Lcom/metamoji/video/AmvMarkerView;I)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvMarkerView;->hitTestIndex(I)I

    move-result p0

    return p0
.end method

.method private final canAddMarker(J)Z
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/SortedList;->find(Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I

    .line 189
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList$Position;->getHit()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result v0

    if-ltz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v2}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/metamoji/video/AmvMarkerView;->mMinMarkerSpan:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    return v1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result v0

    if-ltz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v2}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/metamoji/video/AmvMarkerView;->mMinMarkerSpan:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private final getMarkerCenter(J)F
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvMarkerView;->getMarkerLeft(J)F

    move-result p1

    iget p2, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method private final getMarkerLeft(J)F
    .locals 2

    long-to-float p1, p1

    .line 118
    iget-wide v0, p0, Lcom/metamoji/video/AmvMarkerView;->mTotalRange:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget p2, p0, Lcom/metamoji/video/AmvMarkerView;->mViewWidth:I

    iget v0, p0, Lcom/metamoji/video/AmvMarkerView;->mLeftInert:I

    sub-int/2addr p2, v0

    iget v1, p0, Lcom/metamoji/video/AmvMarkerView;->mRightInert:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerWidth:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    int-to-float p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method private final hitTestIndex(I)I
    .locals 5

    .line 138
    iget-wide v0, p0, Lcom/metamoji/video/AmvMarkerView;->mTotalRange:J

    iget v2, p0, Lcom/metamoji/video/AmvMarkerView;->mLeftInert:I

    sub-int v3, p1, v2

    int-to-long v3, v3

    mul-long/2addr v0, v3

    long-to-double v0, v0

    iget v3, p0, Lcom/metamoji/video/AmvMarkerView;->mViewWidth:I

    sub-int/2addr v3, v2

    iget v2, p0, Lcom/metamoji/video/AmvMarkerView;->mRightInert:I

    sub-int/2addr v3, v2

    int-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/lib/utils/SortedList;->find(Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I

    .line 140
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList$Position;->getHit()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    if-ltz v0, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/SortedList$Position;->getHit()I

    move-result p1

    return p1

    .line 146
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    int-to-float v0, p1

    .line 147
    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    iget-object v3, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v3}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/metamoji/video/AmvMarkerView;->hitTestSub(FJ)F

    move-result v0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v2}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v3}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result v3

    if-ltz v3, :cond_2

    int-to-float p1, p1

    .line 154
    iget-object v3, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    iget-object v4, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v4}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/metamoji/video/AmvMarkerView;->hitTestSub(FJ)F

    move-result p1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method private final hitTestSub(FJ)F
    .locals 1

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/metamoji/video/AmvMarkerView;->getMarkerLeft(J)F

    move-result p2

    iget p3, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerHitLuckyZone:I

    int-to-float v0, p3

    sub-float/2addr p2, v0

    .line 129
    iget v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr v0, p3

    cmpg-float p3, p2, p1

    if-gtz p3, :cond_0

    cmpg-float p3, p1, v0

    if-gtz p3, :cond_0

    sub-float p2, p1, p2

    sub-float/2addr v0, p1

    .line 132
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method static final mMarkers$lambda$0(JJ)I
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static final resetHighLightMarker$lambda$1(Lcom/metamoji/video/AmvMarkerView;)V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->resetHighLightMarker()V

    return-void
.end method

.method public static synthetic setMarkers$default(Lcom/metamoji/video/AmvMarkerView;Ljava/util/Collection;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvMarkerView;->setMarkers(Ljava/util/Collection;Z)V

    return-void
.end method


# virtual methods
.method public final addMarker(JLjava/lang/Object;)V
    .locals 2

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvMarkerView;->canAddMarker(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/SortedList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    .line 209
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerAddedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final contextMenuOn(JLjava/lang/Object;)V
    .locals 3

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mHighLightMarker:Ljava/lang/Long;

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    .line 259
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerContextQueryListener:Lcom/metamoji/lib/utils/FuncyListener3;

    long-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvMarkerView;->getMarkerCenter(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p3}, Lcom/metamoji/lib/utils/FuncyListener3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getMarkerAddedListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerAddedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getMarkerContextQueryListener()Lcom/metamoji/lib/utils/FuncyListener3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener3<",
            "Ljava/lang/Double;",
            "Ljava/lang/Float;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerContextQueryListener:Lcom/metamoji/lib/utils/FuncyListener3;

    return-object v0
.end method

.method public final getMarkerRemovedListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerRemovedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getMarkerSelectedListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerSelectedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList;->getAsArrayList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final nextMark(JLjava/lang/Object;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/SortedList;->find(Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I

    .line 229
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    iget-object p2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {p2}, Lcom/metamoji/lib/utils/SortedList$Position;->getNext()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/video/AmvMarkerView;->selectMarker(JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/metamoji/video/AmvMarkerView;->mViewWidth:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/metamoji/video/AmvMarkerView;->mTotalRange:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 168
    invoke-direct {p0, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->getMarkerLeft(J)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 170
    iget-object v4, p0, Lcom/metamoji/video/AmvMarkerView;->mHighLightMarker:Ljava/lang/Long;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/metamoji/video/AmvMarkerView;->mDrMarkerHL:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 173
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/metamoji/video/AmvMarkerView;->mDrMarker:Landroid/graphics/drawable/Drawable;

    .line 175
    :goto_2
    iget v2, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkerWidth:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/metamoji/video/AmvMarkerView;->mNaturalHeight:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    const/16 v3, 0xc8

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    :cond_0
    move p1, v3

    .line 105
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_4

    .line 112
    iget p2, p0, Lcom/metamoji/video/AmvMarkerView;->mNaturalHeight:I

    goto :goto_0

    .line 111
    :cond_2
    iget p2, p0, Lcom/metamoji/video/AmvMarkerView;->mNaturalHeight:I

    goto :goto_0

    .line 110
    :cond_3
    iget v0, p0, Lcom/metamoji/video/AmvMarkerView;->mNaturalHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 114
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvMarkerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 353
    sget-object v0, Lcom/metamoji/video/AmvMarkerView;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 354
    instance-of v0, p1, Lcom/metamoji/video/AmvMarkerView$SavedState;

    if-eqz v0, :cond_0

    .line 355
    check-cast p1, Lcom/metamoji/video/AmvMarkerView$SavedState;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvMarkerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 356
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList;->clear()V

    .line 357
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvMarkerView$SavedState;->getMarkersList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/SortedList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 347
    sget-object v0, Lcom/metamoji/video/AmvMarkerView;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 348
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/metamoji/video/AmvMarkerView$SavedState;

    iget-object v2, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-direct {v1, v0, v2}, Lcom/metamoji/video/AmvMarkerView$SavedState;-><init>(Landroid/os/Parcelable;Lcom/metamoji/lib/utils/SortedList;)V

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 182
    iget p2, p0, Lcom/metamoji/video/AmvMarkerView;->mViewWidth:I

    if-eq p2, p1, :cond_0

    .line 183
    iput p1, p0, Lcom/metamoji/video/AmvMarkerView;->mViewWidth:I

    :cond_0
    return-void
.end method

.method public final prevMark(JLjava/lang/Object;)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/SortedList;->find(Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I

    .line 244
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result p1

    if-gez p1, :cond_0

    const-wide/16 p1, 0x0

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/video/AmvMarkerView;->selectMarker(JLjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    iget-object p2, p0, Lcom/metamoji/video/AmvMarkerView;->mListPos:Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-virtual {p2}, Lcom/metamoji/lib/utils/SortedList$Position;->getPrev()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/video/AmvMarkerView;->selectMarker(JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final removeMarker(JLjava/lang/Object;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/SortedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    .line 217
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerRemovedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final resetHighLightMarker()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mHighLightMarker:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mHighLightMarker:Ljava/lang/Long;

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final resetHighLightMarker(J)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mHighLightMarker:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvMarkerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvMarkerView$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvMarkerView;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final resetWithTotalRange(J)V
    .locals 0

    .line 263
    iput-wide p1, p0, Lcom/metamoji/video/AmvMarkerView;->mTotalRange:J

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    return-void
.end method

.method public final selectMarker(JLjava/lang/Object;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->markerSelectedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setHighLightMarker(J)V
    .locals 0

    .line 269
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->mHighLightMarker:Ljava/lang/Long;

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    return-void
.end method

.method public final setMarkerAddedListener(Lcom/metamoji/lib/utils/FuncyListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->markerAddedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-void
.end method

.method public final setMarkerContextQueryListener(Lcom/metamoji/lib/utils/FuncyListener3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/FuncyListener3<",
            "Ljava/lang/Double;",
            "Ljava/lang/Float;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->markerContextQueryListener:Lcom/metamoji/lib/utils/FuncyListener3;

    return-void
.end method

.method public final setMarkerRemovedListener(Lcom/metamoji/lib/utils/FuncyListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->markerRemovedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-void
.end method

.method public final setMarkerSelectedListener(Lcom/metamoji/lib/utils/FuncyListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Ljava/lang/Double;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/metamoji/video/AmvMarkerView;->markerSelectedListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-void
.end method

.method public final setMarkers(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/SortedList;->clear()V

    .line 43
    new-instance v0, Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/SortedList$Position;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 45
    iget-object v3, p0, Lcom/metamoji/video/AmvMarkerView;->mMarkers:Lcom/metamoji/lib/utils/SortedList;

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/metamoji/lib/utils/SortedList;->addCore(Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/video/AmvMarkerView;->invalidate()V

    :cond_1
    return-void
.end method
