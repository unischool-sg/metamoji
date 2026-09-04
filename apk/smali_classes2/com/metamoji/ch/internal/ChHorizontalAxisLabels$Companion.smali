.class public final Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;
.super Ljava/lang/Object;
.source "ChHorizontalAxisLabels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jd\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00150\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00100\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;",
        "",
        "<init>",
        "()V",
        "build",
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
        "sprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "texts",
        "",
        "",
        "chartSize",
        "Lcom/metamoji/ch/ChSize;",
        "truncationStrategy",
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;",
        "labelMargin",
        "",
        "initialDataAreaRect",
        "Lcom/metamoji/ch/ChRect;",
        "updateDataAreaRect",
        "Lkotlin/Function1;",
        "",
        "positionAt",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Sprite;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;",
            "D",
            "Lcom/metamoji/ch/ChRect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/ch/ChRect;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;"
        }
    .end annotation

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "texts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chartSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncationStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialDataAreaRect"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDataAreaRect"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionAt"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;-><init>(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 76
    invoke-virtual {v1}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->build()Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    move-result-object p1

    return-object p1
.end method
