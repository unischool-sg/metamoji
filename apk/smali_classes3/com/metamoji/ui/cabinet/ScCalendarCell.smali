.class public final Lcom/metamoji/ui/cabinet/ScCalendarCell;
.super Landroid/view/View;
.source "ScCalendarCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScCalendarCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScCalendarCell.kt\ncom/metamoji/ui/cabinet/ScCalendarCell\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,328:1\n27#2,7:329\n27#2,7:336\n27#2,7:343\n*S KotlinDebug\n*F\n+ 1 ScCalendarCell.kt\ncom/metamoji/ui/cabinet/ScCalendarCell\n*L\n109#1:329,7\n131#1:336,7\n150#1:343,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 N2\u00020\u0001:\u0001NB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0014J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0016\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u000bJ\u000e\u0010C\u001a\u00020\u00172\u0006\u0010D\u001a\u00020EJ\"\u0010F\u001a\u0004\u0018\u00010\u00072\u0008\u0010G\u001a\u0004\u0018\u00010\u00072\u0006\u0010H\u001a\u00020\u0007H\u0082@\u00a2\u0006\u0002\u0010IJ\u0012\u0010J\u001a\u00020\u00172\u0008\u0010K\u001a\u0004\u0018\u00010\u0007H\u0002J\u0006\u0010L\u001a\u00020\u0017J\u0008\u0010M\u001a\u00020\u0017H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010+\"\u0004\u00080\u0010-R\u001c\u00104\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010+\"\u0004\u00086\u0010-R\u001c\u00107\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010+\"\u0004\u00089\u0010-R\u001c\u0010:\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010+\"\u0004\u0008<\u0010-R\u001a\u0010=\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006O"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarCell;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "m_date",
        "",
        "m_bmp",
        "Landroid/graphics/Bitmap;",
        "m_SrcRect",
        "Landroid/graphics/Rect;",
        "m_DesRect",
        "titlePaint",
        "Landroid/text/TextPaint;",
        "ownerPaint",
        "datePaint",
        "Landroid/graphics/Paint;",
        "dateBgPaint",
        "m_dateRect",
        "m_dateBgRect",
        "Landroid/graphics/RectF;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "m_dic",
        "",
        "getM_dic",
        "()Ljava/lang/Object;",
        "setM_dic",
        "(Ljava/lang/Object;)V",
        "m_frame",
        "getM_frame",
        "()Landroid/graphics/Rect;",
        "setM_frame",
        "(Landroid/graphics/Rect;)V",
        "m_title",
        "getM_title",
        "()Ljava/lang/String;",
        "setM_title",
        "(Ljava/lang/String;)V",
        "m_owner",
        "getM_owner",
        "setM_owner",
        "setDic",
        "dic",
        "frame",
        "m_driveId",
        "getM_driveId",
        "setM_driveId",
        "m_docId",
        "getM_docId",
        "setM_docId",
        "m_thumbnailFile",
        "getM_thumbnailFile",
        "setM_thumbnailFile",
        "m_isProtected",
        "",
        "getM_isProtected",
        "()Z",
        "setM_isProtected",
        "(Z)V",
        "checkThumbnail",
        "parent",
        "Lcom/metamoji/ui/cabinet/ScCalendarList;",
        "fetchUserDataSuspend",
        "driveId",
        "docId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateImage",
        "file",
        "updateThumbnail",
        "calcRect",
        "Companion",
        "app"
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
.field public static final Companion:Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;

.field public static final D_OWNER_H:F = 16.0f

.field public static final D_TITLE_H:F = 44.0f


# instance fields
.field private final dateBgPaint:Landroid/graphics/Paint;

.field private final datePaint:Landroid/graphics/Paint;

.field private m_DesRect:Landroid/graphics/Rect;

.field private m_SrcRect:Landroid/graphics/Rect;

.field private m_bmp:Landroid/graphics/Bitmap;

.field private m_date:Ljava/lang/String;

.field private m_dateBgRect:Landroid/graphics/RectF;

.field private m_dateRect:Landroid/graphics/Rect;

.field private m_dic:Ljava/lang/Object;

.field private m_docId:Ljava/lang/String;

.field private m_driveId:Ljava/lang/String;

.field private m_frame:Landroid/graphics/Rect;

.field private m_isProtected:Z

.field private m_owner:Ljava/lang/String;

.field private m_thumbnailFile:Ljava/lang/String;

.field private m_title:Ljava/lang/String;

.field private final ownerPaint:Landroid/text/TextPaint;

.field private final titlePaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_SrcRect:Landroid/graphics/Rect;

    .line 46
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_DesRect:Landroid/graphics/Rect;

    .line 47
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->titlePaint:Landroid/text/TextPaint;

    .line 48
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->ownerPaint:Landroid/text/TextPaint;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->datePaint:Landroid/graphics/Paint;

    .line 50
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->dateBgPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateRect:Landroid/graphics/Rect;

    .line 53
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    .line 62
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->setClickable(Z)V

    .line 63
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 64
    new-instance v5, Landroid/content/res/ColorStateList;

    const v6, 0x10100a7

    .line 65
    filled-new-array {v6}, [I

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [I

    filled-new-array {v6, v7}, [[I

    move-result-object v6

    .line 66
    sget-object v7, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG_P()I

    move-result v7

    sget-object v8, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v8}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    .line 64
    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/4 v6, 0x6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 69
    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x2

    const/high16 v6, 0x41600000    # 14.0f

    .line 71
    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 76
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 77
    sget-object v4, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_TEXT()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 79
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v7, 0x41200000    # 10.0f

    .line 82
    invoke-static {v5, v7, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 87
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_INFO()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v5, v6, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_DATE_TEXT()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 99
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_DATE_BG()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    .line 171
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_title:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_owner:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$fetchUserDataSuspend(Lcom/metamoji/ui/cabinet/ScCalendarCell;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->fetchUserDataSuspend(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateImage(Lcom/metamoji/ui/cabinet/ScCalendarCell;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->updateImage(Ljava/lang/String;)V

    return-void
.end method

.method private final calcRect()V
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 302
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_SrcRect:Landroid/graphics/Rect;

    const/high16 v1, 0x40800000    # 4.0f

    .line 303
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 304
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v3, v0

    .line 310
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr v3, v0

    .line 313
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    move v5, v1

    move v1, v0

    move v0, v5

    move v5, v3

    move v3, v2

    move v2, v5

    .line 315
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_DesRect:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method private final fetchUserDataSuspend(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 271
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 272
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->getInstance()Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    move-result-object v2

    .line 273
    new-instance v3, Lcom/metamoji/ui/cabinet/ScCalendarCell$fetchUserDataSuspend$2$1;

    invoke-direct {v3, v1}, Lcom/metamoji/ui/cabinet/ScCalendarCell$fetchUserDataSuspend$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lcom/metamoji/sd/SdSuccessBlock;

    const/4 v1, 0x0

    invoke-virtual {v2, p1, p2, v3, v1}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->downloadDocumentThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 271
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final updateImage(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_thumbnailFile:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->updateThumbnail()V

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public final checkThumbnail(Lcom/metamoji/ui/cabinet/ScCalendarList;)V
    .locals 11

    const-string v0, "documentId"

    const-string v1, "driveId"

    const-string v2, "parent"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dic:Ljava/lang/Object;

    invoke-static {v2}, Lcom/metamoji/ns/NsShareViewCommand;->getDocumentList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dic:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsShareViewCommand;->getDocInfo(Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    iput-object v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_driveId:Ljava/lang/String;

    .line 206
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    iput-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_docId:Ljava/lang/String;

    .line 208
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_driveId:Ljava/lang/String;

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 209
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_docId:Ljava/lang/String;

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 212
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dic:Ljava/lang/Object;

    invoke-static {v5}, Lcom/metamoji/ns/NsShareViewCommand;->getHasPassword(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 216
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 218
    instance-of v8, v7, Ljava/util/Map;

    if-eqz v8, :cond_5

    check-cast v7, Ljava/util/Map;

    goto :goto_4

    :cond_5
    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_4

    .line 220
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v8

    .line 221
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_6

    check-cast v9, Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v9, v6

    .line 222
    :goto_5
    iget-object v10, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_docId:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_4

    :cond_8
    if-nez v8, :cond_9

    goto :goto_6

    .line 224
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 225
    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 226
    iput-object v9, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 228
    :cond_a
    :goto_6
    const-string v0, "contentsAttribute"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected(I)Z

    move-result v5

    :cond_b
    if-nez v5, :cond_c

    .line 239
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 240
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object v0, v6

    :goto_7
    if-nez v0, :cond_d

    if-nez v5, :cond_d

    .line 246
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->getInstance()Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    move-result-object v0

    .line 247
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->getDocumentIconImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 250
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 251
    new-instance v1, Lcom/metamoji/ui/cabinet/ScCalendarCell$checkThumbnail$2;

    invoke-direct {v1, p0, v3, v4, v6}, Lcom/metamoji/ui/cabinet/ScCalendarCell$checkThumbnail$2;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarCell;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->addTask(Lkotlin/jvm/functions/Function1;)V

    .line 260
    :cond_d
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_thumbnailFile:Ljava/lang/String;

    .line 261
    iput-boolean v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_isProtected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 264
    :catchall_0
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "ScCallenderCell#checkThumbnail fail."

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final getM_dic()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dic:Ljava/lang/Object;

    return-object v0
.end method

.method public final getM_docId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_docId:Ljava/lang/String;

    return-object v0
.end method

.method public final getM_driveId()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public final getM_frame()Landroid/graphics/Rect;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getM_isProtected()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_isProtected:Z

    return v0
.end method

.method public final getM_owner()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_owner:Ljava/lang/String;

    return-object v0
.end method

.method public final getM_thumbnailFile()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_thumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getM_title()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "build(...)"

    const-string/jumbo v1, "setEllipsize(...)"

    const-string v2, "canvas"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_bmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 111
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_SrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_DesRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_title:Ljava/lang/String;

    const/high16 v4, 0x40000000    # 2.0f

    .line 116
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    .line 117
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x2

    int-to-float v8, v7

    mul-float v9, v5, v8

    sub-float/2addr v6, v9

    .line 120
    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v10, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->titlePaint:Landroid/text/TextPaint;

    float-to-int v6, v6

    const/4 v11, 0x0

    invoke-static {v9, v11, v3, v10, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 121
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 122
    invoke-virtual {v3, v6, v9}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v7}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 124
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    div-float/2addr v9, v8

    sub-float/2addr v6, v9

    .line 128
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 333
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 132
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_owner:Ljava/lang/String;

    .line 133
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    .line 134
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v4, v8

    sub-float/2addr v5, v6

    .line 137
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v9, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->ownerPaint:Landroid/text/TextPaint;

    float-to-int v5, v5

    invoke-static {v6, v11, v3, v9, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 138
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 139
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 140
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    sub-float/2addr v0, v3

    .line 144
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 151
    :try_start_2
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->dateBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 155
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_date:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 156
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 157
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    .line 162
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->datePaint:Landroid/graphics/Paint;

    .line 158
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1

    :catchall_1
    move-exception v0

    .line 340
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :catchall_2
    move-exception v0

    .line 333
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 58
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setDic(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dic:Ljava/lang/Object;

    .line 175
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    .line 177
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->getTitle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getTitle(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_title:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->getOwnerName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getOwnerName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_owner:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->getOpenDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    .line 181
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "H:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 182
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 183
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_date:Ljava/lang/String;

    .line 185
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->datePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 186
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 187
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    .line 188
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    add-float/2addr v3, v2

    invoke-direct {v0, p1, p2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dateBgRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setM_dic(Ljava/lang/Object;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_dic:Ljava/lang/Object;

    return-void
.end method

.method public final setM_docId(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_docId:Ljava/lang/String;

    return-void
.end method

.method public final setM_driveId(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_driveId:Ljava/lang/String;

    return-void
.end method

.method public final setM_frame(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_frame:Landroid/graphics/Rect;

    return-void
.end method

.method public final setM_isProtected(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_isProtected:Z

    return-void
.end method

.method public final setM_owner(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_owner:Ljava/lang/String;

    return-void
.end method

.method public final setM_thumbnailFile(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_thumbnailFile:Ljava/lang/String;

    return-void
.end method

.method public final setM_title(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_title:Ljava/lang/String;

    return-void
.end method

.method public final updateThumbnail()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_thumbnailFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_isProtected:Z

    if-nez v1, :cond_0

    const/16 v1, 0xc8

    .line 291
    invoke-static {v0, v1, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_isProtected:Z

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    :goto_0
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarCell;->m_bmp:Landroid/graphics/Bitmap;

    .line 297
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->calcRect()V

    return-void
.end method
