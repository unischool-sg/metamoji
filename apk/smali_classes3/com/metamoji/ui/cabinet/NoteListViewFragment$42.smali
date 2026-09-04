.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V
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
.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$error:Lcom/metamoji/sd/SdError;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4758
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$error:Lcom/metamoji/sd/SdError;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$driveId:Ljava/lang/String;

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

    .line 4758
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->call()Ljava/lang/Void;

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

    .line 4762
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$error:Lcom/metamoji/sd/SdError;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v0, v1, :cond_0

    .line 4763
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    goto :goto_0

    .line 4764
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$error:Lcom/metamoji/sd/SdError;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v0, v1, :cond_1

    .line 4765
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    goto :goto_0

    .line 4767
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;->val$error:Lcom/metamoji/sd/SdError;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
