.class public final Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;
.super Ljava/lang/Object;
.source "AmvTranscodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0013\u001a\u00020\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;",
        "",
        "<init>",
        "()V",
        "completed",
        "",
        "getCompleted",
        "()Z",
        "setCompleted",
        "(Z)V",
        "result",
        "getResult",
        "setResult",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "setError",
        "(Lcom/metamoji/video/AmvError;)V",
        "reset",
        "",
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
.field private completed:Z

.field private error:Lcom/metamoji/video/AmvError;

.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/metamoji/video/AmvError;

    invoke-direct {v0}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->error:Lcom/metamoji/video/AmvError;

    return-void
.end method


# virtual methods
.method public final getCompleted()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->completed:Z

    return v0
.end method

.method public final getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public final getResult()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->result:Z

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->completed:Z

    .line 39
    iput-boolean v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->result:Z

    .line 40
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->error:Lcom/metamoji/video/AmvError;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvError;->reset()V

    return-void
.end method

.method public final setCompleted(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->completed:Z

    return-void
.end method

.method public final setError(Lcom/metamoji/video/AmvError;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->error:Lcom/metamoji/video/AmvError;

    return-void
.end method

.method public final setResult(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->result:Z

    return-void
.end method
