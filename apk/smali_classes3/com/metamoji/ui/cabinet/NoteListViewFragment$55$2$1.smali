.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;

.field final synthetic val$error:Lcom/metamoji/sd/SdError;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;Lcom/metamoji/sd/SdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6547
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->val$error:Lcom/metamoji/sd/SdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 6547
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6550
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->val$error:Lcom/metamoji/sd/SdError;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v0, v1, :cond_0

    .line 6551
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    goto :goto_0

    .line 6552
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->val$error:Lcom/metamoji/sd/SdError;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v0, v1, :cond_1

    .line 6553
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    goto :goto_0

    .line 6555
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2$1;->val$error:Lcom/metamoji/sd/SdError;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
