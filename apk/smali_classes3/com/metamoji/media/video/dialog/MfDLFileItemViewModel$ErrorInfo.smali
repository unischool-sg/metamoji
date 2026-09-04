.class public final Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;",
        "",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;)V",
        "value",
        "",
        "error",
        "getError",
        "()Z",
        "",
        "messageString",
        "getMessageString",
        "()Ljava/lang/String;",
        "",
        "messageId",
        "getMessageId",
        "()I",
        "setError",
        "",
        "message",
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
.field private error:Z

.field private messageId:I

.field private messageString:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->error:Z

    return v0
.end method

.method public final getMessageId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->messageId:I

    return v0
.end method

.method public final getMessageString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->messageString:Ljava/lang/String;

    return-object v0
.end method

.method public final setError(I)V
    .locals 2

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->error:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->messageString:Ljava/lang/String;

    .line 56
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->messageId:I

    .line 57
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->error:Z

    .line 62
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->messageString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->messageId:I

    .line 64
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
