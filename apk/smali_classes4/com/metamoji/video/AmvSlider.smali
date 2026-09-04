.class public final Lcom/metamoji/video/AmvSlider;
.super Landroid/view/View;
.source "AmvSlider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvSlider$Companion;,
        Lcom/metamoji/video/AmvSlider$DraggingInfo;,
        Lcom/metamoji/video/AmvSlider$Knob;,
        Lcom/metamoji/video/AmvSlider$Range;,
        Lcom/metamoji/video/AmvSlider$SavedState;,
        Lcom/metamoji/video/AmvSlider$SliderDragState;,
        Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u0095\u00012\u00020\u0001:\u000e\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\\\u001a\u00020\u0007H\u0002J\u0006\u0010]\u001a\u00020\u0007J\u0010\u0010^\u001a\u00020\u00072\u0008\u0008\u0002\u0010_\u001a\u00020\u0013J\u0010\u0010`\u001a\u0002012\u0006\u0010a\u001a\u00020\u000bH\u0002J\u000e\u0010b\u001a\u00020\u000b2\u0006\u0010c\u001a\u000201J\u0014\u0010d\u001a\u00020\u0010*\u00020O2\u0006\u0010e\u001a\u000201H\u0002J\u0014\u0010f\u001a\u00020\u0010*\u00020O2\u0006\u0010e\u001a\u000201H\u0002J\u0014\u0010g\u001a\u00020\u0010*\u00020O2\u0006\u0010e\u001a\u000201H\u0002J,\u0010h\u001a\u00020\u0010*\u00020O2\u0006\u0010i\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u00072\u0006\u0010k\u001a\u00020\u00072\u0006\u0010l\u001a\u00020\u0007H\u0002J\u0008\u0010n\u001a\u00020\u0010H\u0002J\u0010\u0010o\u001a\u00020\u00102\u0006\u0010k\u001a\u00020\u0007H\u0002J\u0010\u0010p\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u001c\u0010q\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010r\u001a\u00020\u000b2\u0006\u0010s\u001a\u00020\u000bH\u0002J\u0018\u0010t\u001a\u00020\u00102\u0006\u0010u\u001a\u00020\u00072\u0006\u0010v\u001a\u00020\u0007H\u0014J0\u0010w\u001a\u00020\u00102\u0006\u0010x\u001a\u00020\u00132\u0006\u0010i\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u00072\u0006\u0010y\u001a\u00020\u00072\u0006\u0010z\u001a\u00020\u0007H\u0014J$\u0010{\u001a\u000201*\u0002012\u0006\u0010|\u001a\u00020}2\u0006\u0010~\u001a\u0002012\u0006\u0010\u007f\u001a\u00020>H\u0002J\u0018\u0010\u0080\u0001\u001a\u00030\u0081\u0001*\u00020O2\u0008\u0010\u0082\u0001\u001a\u00030\u0081\u0001H\u0002J\u0011\u0010\u0084\u0001\u001a\u00020\u00102\u0006\u0010|\u001a\u00020}H\u0014J\u0011\u0010\u0085\u0001\u001a\u00020\u00132\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001J,\u0010\u0088\u0001\u001a\u00020\u00132\u0007\u0010\u0089\u0001\u001a\u00020\u00072\u0006\u0010e\u001a\u0002012\u0007\u0010\u008a\u0001\u001a\u0002012\u0007\u0010\u008b\u0001\u001a\u00020\u0013H\u0002J\u0013\u0010\u008c\u0001\u001a\u00020\u00132\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0017J\u0011\u0010\u008f\u0001\u001a\u00020\u00132\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001J\u001b\u0010\u0090\u0001\u001a\u00020\u00132\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001J\n\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0014J\u0015\u0010\u0093\u0001\u001a\u00020\u00102\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0092\u0001H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u001a\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R$\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u001fR$\u0010 \u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010\u001fR$\u0010#\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000e\"\u0004\u0008%\u0010\u001fR\u0011\u0010&\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u000eR\u0011\u0010(\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0017\u0010*\u001a\u00020\u00138F\u00a2\u0006\u000c\u0012\u0004\u0008+\u0010,\u001a\u0004\u0008*\u0010)R\u001e\u0010-\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u0013@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008.\u0010/R\u0011\u00100\u001a\u0002018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u000e\u00104\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00106\u001a\u000607R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010H\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010JR\u000e\u0010K\u001a\u00020LX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010R\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008S\u00103R\u0014\u0010T\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008U\u00103R\u0014\u0010V\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u00103R\u0014\u0010X\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u00103R\u0014\u0010Z\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u00103R\u000e\u0010m\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0083\u0001\u001a\u00030\u0081\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u009c\u0001"
    }
    d2 = {
        "Lcom/metamoji/video/AmvSlider;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mValueRange",
        "",
        "valueRange",
        "getValueRange",
        "()J",
        "resetWithValueRange",
        "",
        "v",
        "redraw",
        "",
        "trimStartPositionChanged",
        "Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;",
        "getTrimStartPositionChanged",
        "()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;",
        "trimEndPositionChanged",
        "getTrimEndPositionChanged",
        "currentPositionChanged",
        "getCurrentPositionChanged",
        "currentPosition",
        "getCurrentPosition",
        "setCurrentPosition",
        "(J)V",
        "trimStartPosition",
        "getTrimStartPosition",
        "setTrimStartPosition",
        "trimEndPosition",
        "getTrimEndPosition",
        "setTrimEndPosition",
        "trimmedRange",
        "getTrimmedRange",
        "isTrimmed",
        "()Z",
        "isDragging",
        "isDragging$annotations",
        "()V",
        "showThumbBg",
        "setShowThumbBg",
        "(Z)V",
        "extentWidth",
        "",
        "getExtentWidth",
        "()F",
        "trimmingEnabled",
        "endToEndRail",
        "mDraggingInfo",
        "Lcom/metamoji/video/AmvSlider$DraggingInfo;",
        "drThumb",
        "Landroid/graphics/drawable/Drawable;",
        "drLeft",
        "drRight",
        "drThumbBg",
        "paintRail",
        "Landroid/graphics/Paint;",
        "paintRailLeft",
        "paintRailNoSel",
        "naturalHeight",
        "railHeight",
        "railLeftHeight",
        "railNoSelHeight",
        "thumbOffset",
        "railOffset",
        "trimmerOffset",
        "maxRailHeight",
        "getMaxRailHeight",
        "()I",
        "mSliderRange",
        "Lcom/metamoji/video/AmvSlider$Range;",
        "mRailY",
        "mThumbRect",
        "Landroid/graphics/RectF;",
        "mTrimLeftRect",
        "mTrimRightRect",
        "mDrawingRailStart",
        "getMDrawingRailStart",
        "mDrawingRailEnd",
        "getMDrawingRailEnd",
        "mCurX",
        "getMCurX",
        "mTrimStartX",
        "getMTrimStartX",
        "mTrimEndX",
        "getMTrimEndX",
        "calcNaturalHeight",
        "minWidth",
        "getSliderHeight",
        "withTrimmingKnob",
        "value2position",
        "value",
        "position2value",
        "position",
        "moveHorizontalCenterTo",
        "x",
        "moveLeftTo",
        "moveRightTo",
        "setOffsetSize",
        "left",
        "top",
        "width",
        "height",
        "viewWidth",
        "initLayoutConstants",
        "updateLayout",
        "applyPosition",
        "limit",
        "min",
        "max",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "right",
        "bottom",
        "drawRail",
        "canvas",
        "Landroid/graphics/Canvas;",
        "end",
        "paint",
        "toRect",
        "Landroid/graphics/Rect;",
        "w",
        "mWorkRect",
        "onDraw",
        "isKnobDragging",
        "knob",
        "Lcom/metamoji/video/AmvSlider$Knob;",
        "handleTouchEvent",
        "action",
        "y",
        "friend",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouchAtFriend",
        "onTrimmingAtFriend",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "onRestoreInstanceState",
        "state",
        "Companion",
        "Range",
        "SliderDragState",
        "SliderValueChangedListener",
        "Knob",
        "DraggingInfo",
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
.field public static final Companion:Lcom/metamoji/video/AmvSlider$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private currentPosition:J

.field private final currentPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

.field private final drLeft:Landroid/graphics/drawable/Drawable;

.field private final drRight:Landroid/graphics/drawable/Drawable;

.field private final drThumb:Landroid/graphics/drawable/Drawable;

.field private final drThumbBg:Landroid/graphics/drawable/Drawable;

.field private endToEndRail:Z

.field private final mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

.field private mRailY:F

.field private final mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

.field private final mThumbRect:Landroid/graphics/RectF;

.field private final mTrimLeftRect:Landroid/graphics/RectF;

.field private final mTrimRightRect:Landroid/graphics/RectF;

.field private mValueRange:J

.field private final mWorkRect:Landroid/graphics/Rect;

.field private final naturalHeight:I

.field private final paintRail:Landroid/graphics/Paint;

.field private final paintRailLeft:Landroid/graphics/Paint;

.field private final paintRailNoSel:Landroid/graphics/Paint;

.field private final railHeight:I

.field private final railLeftHeight:I

.field private final railNoSelHeight:I

.field private final railOffset:I

.field private showThumbBg:Z

.field private final thumbOffset:I

.field private trimEndPosition:J

.field private final trimEndPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

.field private trimStartPosition:J

.field private final trimStartPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

.field private final trimmerOffset:I

.field private trimmingEnabled:Z

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvSlider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvSlider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvSlider;->Companion:Lcom/metamoji/video/AmvSlider$Companion;

    .line 32
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvSlider;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x3e8

    .line 38
    iput-wide v0, p0, Lcom/metamoji/video/AmvSlider;->mValueRange:J

    .line 56
    new-instance v0, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    invoke-direct {v0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvSlider;->trimStartPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    .line 62
    new-instance v0, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    invoke-direct {v0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvSlider;->trimEndPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    .line 69
    new-instance v0, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    invoke-direct {v0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvSlider;->currentPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->showThumbBg:Z

    .line 196
    new-instance v1, Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;-><init>(Lcom/metamoji/video/AmvSlider;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    .line 221
    new-instance v1, Lcom/metamoji/video/AmvSlider$Range;

    invoke-direct {v1}, Lcom/metamoji/video/AmvSlider$Range;-><init>()V

    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    .line 226
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    .line 227
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    .line 228
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/metamoji/video/R$styleable;->AmvSlider:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    :try_start_0
    sget p3, Lcom/metamoji/video/R$styleable;->AmvSlider_trimmingMode:I

    iget-boolean v1, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-nez p3, :cond_0

    .line 250
    sget p3, Lcom/metamoji/video/R$styleable;->AmvSlider_endToEndRail:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/video/AmvSlider;->endToEndRail:Z

    .line 252
    :cond_0
    sget p3, Lcom/metamoji/video/R$styleable;->AmvSlider_valueRange:I

    const/16 v1, 0x3e8

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v1, p3

    invoke-virtual {p0, v1, v2, v3}, Lcom/metamoji/video/AmvSlider;->resetWithValueRange(JZ)V

    .line 255
    sget p3, Lcom/metamoji/video/R$styleable;->AmvSlider_thumb:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_1

    sget p3, Lcom/metamoji/video/R$drawable;->ic_slider_knob:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_1
    iput-object p3, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    .line 256
    sget v1, Lcom/metamoji/video/R$styleable;->AmvSlider_startThumb:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    sget v1, Lcom/metamoji/video/R$drawable;->ic_trim_left:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    .line 257
    sget v1, Lcom/metamoji/video/R$styleable;->AmvSlider_endThumb:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    sget v1, Lcom/metamoji/video/R$drawable;->ic_trim_right:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_3
    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->drRight:Landroid/graphics/drawable/Drawable;

    .line 259
    sget v1, Lcom/metamoji/video/R$styleable;->AmvSlider_thumbBg:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    sget v1, Lcom/metamoji/video/R$drawable;->ic_slider_knob_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_4
    iput-object v1, p0, Lcom/metamoji/video/AmvSlider;->drThumbBg:Landroid/graphics/drawable/Drawable;

    .line 260
    sget v1, Lcom/metamoji/video/R$styleable;->AmvSlider_showThumbBg:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/video/AmvSlider;->setShowThumbBg(Z)V

    .line 263
    sget v1, Lcom/metamoji/video/R$styleable;->AmvSlider_railColor:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 264
    sget v2, Lcom/metamoji/video/R$styleable;->AmvSlider_railLeftColor:I

    const v4, -0x777778

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 265
    sget v5, Lcom/metamoji/video/R$styleable;->AmvSlider_railNoSelColor:I

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 268
    sget v5, Lcom/metamoji/video/R$styleable;->AmvSlider_railHeight:I

    const/4 v6, 0x4

    invoke-static {p1, v6}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/metamoji/video/AmvSlider;->railHeight:I

    .line 269
    sget v6, Lcom/metamoji/video/R$styleable;->AmvSlider_railLeftHeight:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/metamoji/video/AmvSlider;->railLeftHeight:I

    .line 270
    sget v5, Lcom/metamoji/video/R$styleable;->AmvSlider_railNoSelHeight:I

    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvSlider;->railNoSelHeight:I

    .line 272
    sget p1, Lcom/metamoji/video/R$styleable;->AmvSlider_thumbOffset:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvSlider;->thumbOffset:I

    .line 273
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    add-int/2addr p1, p3

    .line 274
    iget-boolean p3, p0, Lcom/metamoji/video/AmvSlider;->endToEndRail:Z

    if-eqz p3, :cond_5

    .line 275
    div-int/lit8 p1, p1, 0x2

    .line 278
    :cond_5
    sget p3, Lcom/metamoji/video/R$styleable;->AmvSlider_railOffset:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvSlider;->railOffset:I

    .line 279
    sget p3, Lcom/metamoji/video/R$styleable;->AmvSlider_trimmerOffset:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvSlider;->trimmerOffset:I

    .line 281
    sget p1, Lcom/metamoji/video/R$styleable;->AmvSlider_saveFromParent:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvSlider;->setSaveFromParentEnabled(Z)V

    .line 292
    invoke-static {v1}, Lcom/metamoji/video/AmvSlider;->_init_$coloredPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvSlider;->paintRail:Landroid/graphics/Paint;

    .line 293
    invoke-static {v2}, Lcom/metamoji/video/AmvSlider;->_init_$coloredPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvSlider;->paintRailLeft:Landroid/graphics/Paint;

    .line 294
    invoke-static {v4}, Lcom/metamoji/video/AmvSlider;->_init_$coloredPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvSlider;->paintRailNoSel:Landroid/graphics/Paint;

    .line 296
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->calcNaturalHeight()I

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvSlider;->naturalHeight:I

    .line 298
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->initLayoutConstants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvSlider;->mWorkRect:Landroid/graphics/Rect;

    return-void

    :catchall_0
    move-exception p1

    .line 300
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

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final _init_$coloredPaint(I)Landroid/graphics/Paint;
    .locals 2

    .line 284
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 285
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 287
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/video/AmvSlider;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMRailY$p(Lcom/metamoji/video/AmvSlider;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/metamoji/video/AmvSlider;->mRailY:F

    return p0
.end method

.method public static final synthetic access$getMThumbRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getMTrimLeftRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getMTrimRightRect$p(Lcom/metamoji/video/AmvSlider;)Landroid/graphics/RectF;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getTrimmingEnabled$p(Lcom/metamoji/video/AmvSlider;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    return p0
.end method

.method private final applyPosition(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMCurX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->moveHorizontalCenterTo(Landroid/graphics/RectF;F)V

    .line 446
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMTrimStartX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->moveRightTo(Landroid/graphics/RectF;F)V

    .line 448
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMTrimEndX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->moveLeftTo(Landroid/graphics/RectF;F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final calcNaturalHeight()I
    .locals 4

    .line 311
    iget v0, p0, Lcom/metamoji/video/AmvSlider;->thumbOffset:I

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    iget v1, p0, Lcom/metamoji/video/AmvSlider;->railOffset:I

    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMaxRailHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 313
    iget-boolean v2, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/metamoji/video/AmvSlider;->trimmerOffset:I

    iget-object v3, p0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private final drawRail(FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)F
    .locals 7

    cmpg-float v0, p1, p3

    if-nez v0, :cond_0

    return p3

    .line 546
    :cond_0
    iget v3, p0, Lcom/metamoji/video/AmvSlider;->mRailY:F

    move v5, v3

    move v2, p1

    move-object v1, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return v4
.end method

.method private final getMCurX()F
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->value2position(J)F

    move-result v0

    return v0
.end method

.method private final getMDrawingRailEnd()F
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->endToEndRail:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/video/AmvSlider;->viewWidth:I

    int-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Range;->getMax()F

    move-result v0

    return v0
.end method

.method private final getMDrawingRailStart()F
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->endToEndRail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Range;->getMin()F

    move-result v0

    return v0
.end method

.method private final getMTrimEndX()F
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->value2position(J)F

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMDrawingRailEnd()F

    move-result v0

    return v0
.end method

.method private final getMTrimStartX()F
    .locals 2

    .line 240
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->value2position(J)F

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMDrawingRailStart()F

    move-result v0

    return v0
.end method

.method private final getMaxRailHeight()I
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    iget v1, p0, Lcom/metamoji/video/AmvSlider;->railHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/video/AmvSlider;->railLeftHeight:I

    iget v2, p0, Lcom/metamoji/video/AmvSlider;->railNoSelHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/metamoji/video/AmvSlider;->railLeftHeight:I

    goto :goto_0
.end method

.method public static synthetic getSliderHeight$default(Lcom/metamoji/video/AmvSlider;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvSlider;->getSliderHeight(Z)I

    move-result p0

    return p0
.end method

.method private final handleTouchEvent(IFFZ)Z
    .locals 0

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->moveTo(F)Z

    move-result p1

    return p1

    .line 751
    :cond_1
    iget-object p1, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->finish()Z

    move-result p1

    return p1

    .line 743
    :cond_2
    iget-object p1, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-virtual {p1, p2, p3, p4}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->initAt(FFZ)Z

    move-result p1

    return p1
.end method

.method private final initLayoutConstants()V
    .locals 12

    .line 405
    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/metamoji/video/AmvSlider;->thumbOffset:I

    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/video/AmvSlider;->setOffsetSize(Landroid/graphics/RectF;IIII)V

    .line 406
    iget v1, v0, Lcom/metamoji/video/AmvSlider;->railOffset:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMaxRailHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/video/AmvSlider;->mRailY:F

    .line 408
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->paintRail:Landroid/graphics/Paint;

    iget v2, v0, Lcom/metamoji/video/AmvSlider;->railHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 409
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->paintRailLeft:Landroid/graphics/Paint;

    iget v2, v0, Lcom/metamoji/video/AmvSlider;->railLeftHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    iget-boolean v1, v0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v1, :cond_0

    .line 412
    iget-object v7, v0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    iget v9, v0, Lcom/metamoji/video/AmvSlider;->trimmerOffset:I

    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    const/4 v8, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/video/AmvSlider;->setOffsetSize(Landroid/graphics/RectF;IIII)V

    .line 413
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 414
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->paintRailNoSel:Landroid/graphics/Paint;

    iget v2, v0, Lcom/metamoji/video/AmvSlider;->railNoSelHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public static synthetic isDragging$annotations()V
    .locals 0

    return-void
.end method

.method private final limit(JJJ)J
    .locals 1

    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    .line 490
    new-instance v0, Lkotlin/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {v0, p3, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/Pair;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v0, p5, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide p5

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    return-wide p3

    :cond_1
    cmp-long p3, p1, p5

    if-lez p3, :cond_2

    return-wide p5

    :cond_2
    return-wide p1
.end method

.method private final moveHorizontalCenterTo(Landroid/graphics/RectF;F)V
    .locals 2

    .line 372
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private final moveLeftTo(Landroid/graphics/RectF;F)V
    .locals 1

    .line 378
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private final moveRightTo(Landroid/graphics/RectF;F)V
    .locals 1

    .line 384
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private final setOffsetSize(Landroid/graphics/RectF;IIII)V
    .locals 0

    int-to-float p2, p2

    .line 391
    iput p2, p1, Landroid/graphics/RectF;->left:F

    int-to-float p2, p3

    .line 392
    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 393
    iget p2, p1, Landroid/graphics/RectF;->left:F

    int-to-float p3, p4

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 394
    iget p2, p1, Landroid/graphics/RectF;->top:F

    int-to-float p3, p5

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private final setShowThumbBg(Z)V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->showThumbBg:Z

    if-eq v0, p1, :cond_0

    .line 136
    iput-boolean p1, p0, Lcom/metamoji/video/AmvSlider;->showThumbBg:Z

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->invalidate()V

    :cond_0
    return-void
.end method

.method private final toRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 552
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 553
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 554
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 555
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-object p2
.end method

.method private final updateLayout(I)V
    .locals 5

    .line 426
    iput p1, p0, Lcom/metamoji/video/AmvSlider;->viewWidth:I

    .line 428
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    .line 431
    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, p1

    iget-object v3, p0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/video/AmvSlider$Range;->set(FF)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v3, p1

    iget-object v4, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/video/AmvSlider$Range;->set(FF)V

    .line 433
    :goto_0
    sget-object v0, Lcom/metamoji/video/AmvSlider;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "viewWidth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", sliderRange="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 434
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvSlider;->applyPosition(Z)V

    return-void
.end method

.method private final value2position(J)F
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Range;->getMin()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider$Range;->getRange()F

    move-result v1

    long-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide p1

    long-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getCurrentPosition()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    return-wide v0
.end method

.method public final getCurrentPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->currentPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    return-object v0
.end method

.method public final getExtentWidth()F
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->endToEndRail:Z

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getSliderHeight(Z)I
    .locals 2

    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->calcNaturalHeight()I

    move-result p1

    return p1

    .line 332
    :cond_0
    iget p1, p0, Lcom/metamoji/video/AmvSlider;->thumbOffset:I

    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/metamoji/video/AmvSlider;->railOffset:I

    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMaxRailHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final getTrimEndPosition()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    return-wide v0
.end method

.method public final getTrimEndPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->trimEndPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    return-object v0
.end method

.method public final getTrimStartPosition()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    return-wide v0
.end method

.method public final getTrimStartPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->trimStartPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    return-object v0
.end method

.method public final getTrimmedRange()J
    .locals 4

    .line 118
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    iget-wide v2, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getValueRange()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->mValueRange:J

    return-wide v0
.end method

.method public final isDragging()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->isDragging()Z

    move-result v0

    return v0
.end method

.method public final isKnobDragging(Lcom/metamoji/video/AmvSlider$Knob;)Z
    .locals 1

    const-string v0, "knob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->draggingStateWithKnob(Lcom/metamoji/video/AmvSlider$Knob;)Lcom/metamoji/video/AmvSlider$SliderDragState;

    move-result-object p1

    sget-object v0, Lcom/metamoji/video/AmvSlider$SliderDragState;->MOVING:Lcom/metamoji/video/AmvSlider$SliderDragState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isTrimmed()Z
    .locals 4

    const-wide/16 v0, 0x0

    .line 124
    iget-wide v2, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final minWidth()I
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-boolean v1, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMDrawingRailStart()F

    move-result v0

    .line 565
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMTrimStartX()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/video/AmvSlider;->paintRailNoSel:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/metamoji/video/AmvSlider;->drawRail(FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)F

    move-result v0

    .line 566
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMCurX()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/video/AmvSlider;->paintRailLeft:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/metamoji/video/AmvSlider;->drawRail(FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)F

    move-result v0

    .line 567
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMTrimEndX()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/video/AmvSlider;->paintRail:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/metamoji/video/AmvSlider;->drawRail(FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)F

    move-result v0

    .line 568
    invoke-direct {p0}, Lcom/metamoji/video/AmvSlider;->getMDrawingRailEnd()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/video/AmvSlider;->paintRailNoSel:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/metamoji/video/AmvSlider;->drawRail(FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)F

    .line 571
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mThumbRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mWorkRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->toRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 572
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->showThumbBg:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumbBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 574
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumbBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 577
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 579
    iget-boolean v0, p0, Lcom/metamoji/video/AmvSlider;->trimmingEnabled:Z

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mTrimLeftRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/video/AmvSlider;->mWorkRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/metamoji/video/AmvSlider;->toRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 581
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 582
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mTrimRightRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/video/AmvSlider;->mWorkRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/metamoji/video/AmvSlider;->toRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 583
    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->drRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 538
    invoke-direct {p0, p4}, Lcom/metamoji/video/AmvSlider;->updateLayout(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 504
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 505
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc8

    if-eqz p2, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p2, v1, :cond_1

    :cond_0
    move p1, v0

    .line 530
    :cond_1
    iget p2, p0, Lcom/metamoji/video/AmvSlider;->naturalHeight:I

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 795
    instance-of v0, p1, Lcom/metamoji/video/AmvSlider$SavedState;

    if-eqz v0, :cond_0

    .line 796
    check-cast p1, Lcom/metamoji/video/AmvSlider$SavedState;

    .line 797
    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 798
    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$SavedState;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/video/AmvSlider;->mValueRange:J

    .line 799
    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$SavedState;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 800
    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$SavedState;->getTrimStartPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->setTrimStartPosition(J)V

    .line 801
    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$SavedState;->getTrimEndPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->setTrimEndPosition(J)V

    return-void

    .line 804
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 785
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 786
    new-instance v1, Lcom/metamoji/video/AmvSlider$SavedState;

    invoke-direct {v1, v0}, Lcom/metamoji/video/AmvSlider$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 787
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/video/AmvSlider$SavedState;->setTotalLength(J)V

    .line 788
    iget-wide v2, p0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/video/AmvSlider$SavedState;->setCurrentPosition(J)V

    .line 789
    iget-wide v2, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/video/AmvSlider$SavedState;->setTrimStartPosition(J)V

    .line 790
    iget-wide v2, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/video/AmvSlider$SavedState;->setTrimEndPosition(J)V

    .line 786
    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public final onTouchAtFriend(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/metamoji/video/AmvSlider;->handleTouchEvent(IFFZ)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/metamoji/video/AmvSlider;->handleTouchEvent(IFFZ)Z

    move-result p1

    return p1
.end method

.method public final onTrimmingAtFriend(Landroid/view/MotionEvent;Lcom/metamoji/video/AmvSlider$Knob;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "knob"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->initByFriend(Lcom/metamoji/video/AmvSlider$Knob;)Z

    move-result p1

    return p1
.end method

.method public final position2value(F)J
    .locals 4

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider$Range;->getMin()F

    move-result v1

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider$Range;->getRange()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToLong(F)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 363
    :catchall_0
    sget-object p1, Lcom/metamoji/video/AmvSlider;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v0, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider$Range;->getMin()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/video/AmvSlider;->mSliderRange:Lcom/metamoji/video/AmvSlider$Range;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider$Range;->getMax()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sliderRange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final resetWithValueRange(JZ)V
    .locals 3

    .line 44
    iput-wide p1, p0, Lcom/metamoji/video/AmvSlider;->mValueRange:J

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setTrimEndPosition(J)V

    const-wide/16 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->setTrimStartPosition(J)V

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 48
    sget-object v0, Lcom/metamoji/video/AmvSlider;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valueRange="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p3}, Lcom/metamoji/video/AmvSlider;->applyPosition(Z)V

    return-void
.end method

.method public final setCurrentPosition(J)V
    .locals 7

    .line 76
    iget-wide v3, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    iget-wide v5, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/video/AmvSlider;->limit(JJJ)J

    move-result-wide p1

    .line 77
    iget-wide v1, v0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 78
    iput-wide p1, v0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    .line 79
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->currentPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, v0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    sget-object v2, Lcom/metamoji/video/AmvSlider$Knob;->THUMB:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-virtual {p2, v2}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->draggingStateWithKnob(Lcom/metamoji/video/AmvSlider$Knob;)Lcom/metamoji/video/AmvSlider$SliderDragState;

    move-result-object p2

    invoke-virtual {v1, p0, p1, p2}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvSlider;->applyPosition(Z)V

    :cond_0
    return-void
.end method

.method public final setTrimEndPosition(J)V
    .locals 7

    .line 106
    iget-wide v3, p0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    invoke-virtual {p0}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide v5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/video/AmvSlider;->limit(JJJ)J

    move-result-wide p1

    .line 107
    iget-wide v1, v0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 108
    iput-wide p1, v0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    .line 109
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->trimEndPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    sget-object v4, Lcom/metamoji/video/AmvSlider$Knob;->RIGHT:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-virtual {v3, v4}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->draggingStateWithKnob(Lcom/metamoji/video/AmvSlider$Knob;)Lcom/metamoji/video/AmvSlider$SliderDragState;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-wide v1, v0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    :cond_0
    const/4 p1, 0x1

    .line 113
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvSlider;->applyPosition(Z)V

    :cond_1
    return-void
.end method

.method public final setTrimStartPosition(J)V
    .locals 7

    const-wide/16 v3, 0x0

    .line 89
    iget-wide v5, p0, Lcom/metamoji/video/AmvSlider;->trimEndPosition:J

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/video/AmvSlider;->limit(JJJ)J

    move-result-wide p1

    .line 90
    iget-wide v1, v0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 91
    iput-wide p1, v0, Lcom/metamoji/video/AmvSlider;->trimStartPosition:J

    .line 92
    iget-object v1, v0, Lcom/metamoji/video/AmvSlider;->trimStartPositionChanged:Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/video/AmvSlider;->mDraggingInfo:Lcom/metamoji/video/AmvSlider$DraggingInfo;

    sget-object v4, Lcom/metamoji/video/AmvSlider$Knob;->LEFT:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-virtual {v3, v4}, Lcom/metamoji/video/AmvSlider$DraggingInfo;->draggingStateWithKnob(Lcom/metamoji/video/AmvSlider$Knob;)Lcom/metamoji/video/AmvSlider$SliderDragState;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-wide v1, v0, Lcom/metamoji/video/AmvSlider;->currentPosition:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    :cond_0
    const/4 p1, 0x1

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvSlider;->applyPosition(Z)V

    :cond_1
    return-void
.end method
