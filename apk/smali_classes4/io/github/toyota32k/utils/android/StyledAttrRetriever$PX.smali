.class public final Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
.super Ljava/lang/Object;
.source "StyledAttrRetriever.kt"

# interfaces
.implements Lio/github/toyota32k/utils/android/IDimension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/android/StyledAttrRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PX"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u0011\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\tH\u0096\u0002J\u0011\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u0011\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\tH\u0096\u0002J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rJ\u0011\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0086\u0002J\u0011\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0086\u0002J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0083\u0004J\n\u0010\u0019\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u001a\u001a\u00020\u001bH\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;",
        "Lio/github/toyota32k/utils/android/IDimension;",
        "v",
        "",
        "<init>",
        "(I)V",
        "getV",
        "()I",
        "div",
        "",
        "times",
        "dp",
        "context",
        "Landroid/content/Context;",
        "px",
        "DP",
        "Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;",
        "plus",
        "minus",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final v:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    return-void
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;IILjava/lang/Object;)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->copy(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final DP(Landroid/content/Context;)Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->dp(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;-><init>(I)V

    return-object v0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    return v0
.end method

.method public final copy(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    return-object v0
.end method

.method public div(F)Lio/github/toyota32k/utils/android/IDimension;
    .locals 2

    .line 227
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    check-cast v0, Lio/github/toyota32k/utils/android/IDimension;

    return-object v0
.end method

.method public div(I)Lio/github/toyota32k/utils/android/IDimension;
    .locals 2

    .line 224
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    div-int/2addr v1, p1

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    check-cast v0, Lio/github/toyota32k/utils/android/IDimension;

    return-object v0
.end method

.method public dp(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    invoke-static {p1, v0}, Lio/github/toyota32k/utils/android/ViewExtKt;->px2dp(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    iget p1, p1, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getV()I
    .locals 1

    .line 222
    iget v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public final minus(Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    iget p1, p1, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    sub-int/2addr v1, p1

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    return-object v0
.end method

.method public final plus(Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    iget p1, p1, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    return-object v0
.end method

.method public px(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    return p1
.end method

.method public times(F)Lio/github/toyota32k/utils/android/IDimension;
    .locals 2

    .line 233
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    check-cast v0, Lio/github/toyota32k/utils/android/IDimension;

    return-object v0
.end method

.method public times(I)Lio/github/toyota32k/utils/android/IDimension;
    .locals 2

    .line 230
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    iget v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    check-cast v0, Lio/github/toyota32k/utils/android/IDimension;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;->v:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PX(v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge unaryMinus()Lio/github/toyota32k/utils/android/IDimension;
    .locals 1

    .line 222
    invoke-super {p0}, Lio/github/toyota32k/utils/android/IDimension;->unaryMinus()Lio/github/toyota32k/utils/android/IDimension;

    move-result-object v0

    return-object v0
.end method
