.class public final Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;
.super Ljava/lang/Object;
.source "ChHorizontalAxisLabels.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;,
        Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;,
        Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0003\u0010\u0011\u0012B3\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
        "",
        "labels",
        "",
        "Lcom/metamoji/ch/internal/ChStringWithSize;",
        "labelPoints",
        "Lcom/metamoji/ch/ChPoint;",
        "labelSpriteRotation",
        "",
        "labelSpriteY",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;DD)V",
        "draw",
        "",
        "sprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "TruncationStrategy",
        "Companion",
        "Builder",
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
.field public static final Companion:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;


# instance fields
.field private final labelPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final labelSpriteRotation:D

.field private final labelSpriteY:D

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->Companion:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;DD)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChPoint;",
            ">;DD)V"
        }
    .end annotation

    const-string v0, "labels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labelPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labels:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelPoints:Ljava/util/List;

    .line 23
    iput-wide p3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelSpriteRotation:D

    .line 24
    iput-wide p5, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelSpriteY:D

    return-void
.end method


# virtual methods
.method public final draw(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 4

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 391
    iget-wide v0, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelSpriteY:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 392
    iget-wide v0, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelSpriteRotation:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 394
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    .line 395
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelPoints:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelPoints:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 397
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-virtual {v2}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->labelPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ch/ChPoint;

    invoke-static {p1, v2, v3}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
