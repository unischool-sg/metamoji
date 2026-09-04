.class public final Lcom/metamoji/video/AmvError;
.super Ljava/lang/Object;
.source "AmvError.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0000J\u0006\u0010\u0015\u001a\u00020\u0000J\u0008\u0010\u0016\u001a\u00020\u0005H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/video/AmvError;",
        "",
        "<init>",
        "()V",
        "mMessage",
        "",
        "mException",
        "",
        "hasError",
        "",
        "getHasError$annotations",
        "getHasError",
        "()Z",
        "message",
        "getMessage",
        "()Ljava/lang/String;",
        "reset",
        "",
        "setError",
        "e",
        "copyFrom",
        "clone",
        "toString",
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


# instance fields
.field private mException:Ljava/lang/Throwable;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getHasError$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final clone()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 49
    new-instance v0, Lcom/metamoji/video/AmvError;

    invoke-direct {v0}, Lcom/metamoji/video/AmvError;-><init>()V

    .line 50
    invoke-virtual {v0, v0}, Lcom/metamoji/video/AmvError;->copyFrom(Lcom/metamoji/video/AmvError;)V

    return-object v0
.end method

.method public final copyFrom(Lcom/metamoji/video/AmvError;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/video/AmvError;->getHasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p1, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    .line 43
    iget-object p1, p1, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final getHasError()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    .line 25
    iput-object v0, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvError;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/video/AmvError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    const-string v0, "No error."

    return-object v0
.end method
