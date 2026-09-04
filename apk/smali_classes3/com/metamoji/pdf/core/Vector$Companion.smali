.class public final Lcom/metamoji/pdf/core/Vector$Companion;
.super Ljava/lang/Object;
.source "Vector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/Vector$Companion;",
        "",
        "<init>",
        "()V",
        "getBounds",
        "Landroid/graphics/RectF;",
        "pts",
        "Lkotlin/sequences/Sequence;",
        "Lcom/metamoji/pdf/core/Vector;",
        "pdf"
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/Vector$Companion;-><init>()V

    return-void
.end method

.method static final getBounds$lambda$0(Lcom/metamoji/pdf/core/Vector;)F
    .locals 1

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/Vector;->getX()F

    move-result p0

    return p0
.end method

.method static final getBounds$lambda$1(Lcom/metamoji/pdf/core/Vector;)F
    .locals 1

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/Vector;->getX()F

    move-result p0

    return p0
.end method

.method static final getBounds$lambda$2(Lcom/metamoji/pdf/core/Vector;)F
    .locals 1

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/Vector;->getY()F

    move-result p0

    return p0
.end method

.method static final getBounds$lambda$3(Lcom/metamoji/pdf/core/Vector;)F
    .locals 1

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/Vector;->getY()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBounds(Lkotlin/sequences/Sequence;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Lcom/metamoji/pdf/core/Vector;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    const-string v0, "pts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->minOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 41
    :goto_0
    new-instance v2, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->maxOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 42
    :goto_1
    new-instance v3, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->minOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    .line 43
    :goto_2
    new-instance v4, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/metamoji/pdf/core/Vector$Companion$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v4}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->maxOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 44
    :cond_3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0, v3, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method
