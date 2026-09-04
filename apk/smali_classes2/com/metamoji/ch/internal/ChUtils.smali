.class public final Lcom/metamoji/ch/internal/ChUtils;
.super Ljava/lang/Object;
.source "ChUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ*\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChUtils;",
        "",
        "<init>",
        "()V",
        "ELLIPSIS",
        "",
        "truncateTail",
        "Lcom/metamoji/ch/internal/ChStringWithSize;",
        "gr",
        "Lcom/metamoji/df/sprite/Graphics;",
        "text",
        "width",
        "",
        "binarySearch",
        "Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;",
        "low",
        "",
        "high",
        "judge",
        "Lkotlin/Function1;",
        "BinarySearchResult",
        "chart"
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
.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final INSTANCE:Lcom/metamoji/ch/internal/ChUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ch/internal/ChUtils;

    invoke-direct {v0}, Lcom/metamoji/ch/internal/ChUtils;-><init>()V

    sput-object v0, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final truncateTail$lambda$0(Ljava/lang/String;Lcom/metamoji/df/sprite/Graphics;DI)I
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p4, "substring(...)"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, "\u2026"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-double p0, p0

    cmpg-double p4, p0, p2

    if-gez p4, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double p0, p0, p2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final binarySearch(IILkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;"
        }
    .end annotation

    const-string v0, "judge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-gt p1, p2, :cond_2

    sub-int v0, p2, p1

    .line 74
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;-><init>(ZI)V

    return-object p1

    .line 87
    :cond_2
    new-instance p2, Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;-><init>(ZI)V

    return-object p2
.end method

.method public final truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;
    .locals 4

    const-string v0, "gr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    const-string v1, "rectOfString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v2

    cmpg-double v2, v2, p3

    if-gtz v2, :cond_0

    .line 26
    new-instance p1, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {p1, p2, v0}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 31
    new-instance p1, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {p1, p2, v0}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    return-object p1

    :cond_1
    sub-int/2addr v2, v3

    .line 35
    new-instance v0, Lcom/metamoji/ch/internal/ChUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/metamoji/ch/internal/ChUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/metamoji/df/sprite/Graphics;D)V

    invoke-virtual {p0, v3, v2, v0}, Lcom/metamoji/ch/internal/ChUtils;->binarySearch(IILkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;->component1()Z

    move-result p4

    invoke-virtual {p3}, Lcom/metamoji/ch/internal/ChUtils$BinarySearchResult;->component2()I

    move-result p3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 45
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    :goto_0
    const/4 p4, 0x0

    .line 46
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "substring(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\u2026"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object p1

    .line 48
    new-instance p3, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {p3, p2, p1}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    return-object p3
.end method
