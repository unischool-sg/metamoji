.class public final Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;
.super Ljava/lang/Object;
.source "UnVideoMarkerManager.kt"

# interfaces
.implements Lcom/metamoji/un/video/IUnVideoMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoMarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionalMarker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;",
        "Lcom/metamoji/un/video/IUnVideoMarker;",
        "id",
        "",
        "time",
        "",
        "<init>",
        "(Ljava/lang/String;D)V",
        "getId",
        "()Ljava/lang/String;",
        "getTime",
        "()D",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final id:Ljava/lang/String;

.field private final time:D


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;-><init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    iput-wide p2, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 27
    const-string p1, ""

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;-><init>(Ljava/lang/String;D)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;Ljava/lang/String;DILjava/lang/Object;)Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->copy(Ljava/lang/String;D)Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;D)Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    iget-wide v5, p1, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->id:Ljava/lang/String;

    iget-wide v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$ProvisionalMarker;->time:D

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ProvisionalMarker(id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", time="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
