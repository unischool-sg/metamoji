.class public final Lcom/metamoji/sd/cs/HttpClientResponse;
.super Ljava/lang/Object;
.source "SdHttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\'\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\rJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0017\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0008H\u00c6\u0003J5\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/sd/cs/HttpClientResponse;",
        "",
        "httpStatusCode",
        "",
        "bodyJsonMap",
        "",
        "",
        "isCancel",
        "",
        "<init>",
        "(ILjava/util/Map;Z)V",
        "code",
        "map",
        "(ILjava/util/Map;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
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
.field public bodyJsonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public httpStatusCode:I

.field public isCancel:Z


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/sd/cs/HttpClientResponse;-><init>(ILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    .line 29
    iput-object p2, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    .line 30
    iput-boolean p3, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/sd/cs/HttpClientResponse;ILjava/util/Map;ZILjava/lang/Object;)Lcom/metamoji/sd/cs/HttpClientResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/sd/cs/HttpClientResponse;->copy(ILjava/util/Map;Z)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    return v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    return v0
.end method

.method public final copy(ILjava/util/Map;Z)Lcom/metamoji/sd/cs/HttpClientResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/sd/cs/HttpClientResponse;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/sd/cs/HttpClientResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/sd/cs/HttpClientResponse;-><init>(ILjava/util/Map;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/sd/cs/HttpClientResponse;

    iget v1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    iget v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    iget-boolean p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    iget-object v1, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpClientResponse(httpStatusCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", bodyJsonMap="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
