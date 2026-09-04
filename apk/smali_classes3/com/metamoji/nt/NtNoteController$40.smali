.class Lcom/metamoji/nt/NtNoteController$40;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 5459
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$40;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$40;->val$docID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$40;->val$driveID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/metamoji/sd/SdFailureBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5459
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$40;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5462
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$40;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    .line 5463
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_0

    .line 5464
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$40;->this$0:Lcom/metamoji/nt/NtNoteController;

    new-instance v1, Lcom/metamoji/nt/NtNoteController$40$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$40$1;-><init>(Lcom/metamoji/nt/NtNoteController$40;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->tryUserLogin(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5477
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5481
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtNoteController$40$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtNoteController$40$2;-><init>(Lcom/metamoji/nt/NtNoteController$40;Lcom/metamoji/sd/SdError;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
