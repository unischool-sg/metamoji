.class public final Lio/github/toyota32k/media/lib/converter/ConvertResult;
.super Ljava/lang/Object;
.source "ConvertResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\tH\u00c6\u0003J5\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "",
        "()V",
        "succeeded",
        "",
        "cancelled",
        "errorMessage",
        "",
        "exception",
        "",
        "(ZZLjava/lang/String;Ljava/lang/Throwable;)V",
        "getCancelled",
        "()Z",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "getException",
        "()Ljava/lang/Throwable;",
        "getSucceeded",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;


# instance fields
.field private final cancelled:Z

.field private final errorMessage:Ljava/lang/String;

.field private final exception:Ljava/lang/Throwable;

.field private final succeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->Companion:Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, v2, v0, v1, v1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;-><init>(ZZLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    iput-boolean p2, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    iput-object p3, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/media/lib/converter/ConvertResult;ZZLjava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/ConvertResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->copy(ZZLjava/lang/String;Ljava/lang/Throwable;)Lio/github/toyota32k/media/lib/converter/ConvertResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final copy(ZZLjava/lang/String;Ljava/lang/Throwable;)Lio/github/toyota32k/media/lib/converter/ConvertResult;
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/ConvertResult;-><init>(ZZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    iget-boolean v3, p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    iget-boolean v3, p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    iget-object p1, p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCancelled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getSucceeded()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConvertResult(succeeded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->succeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->cancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
