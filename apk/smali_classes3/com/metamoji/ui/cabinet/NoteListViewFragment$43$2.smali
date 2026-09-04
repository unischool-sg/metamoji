.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

.field final synthetic val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;Lcom/metamoji/nt/cabinet/cabinetWaitView;)V
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

    .line 4925
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

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

    .line 4925
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->call()Ljava/lang/Void;

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

    .line 4928
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 4929
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    .line 4930
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    .line 4931
    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_0

    .line 4933
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    invoke-interface {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->onCancel()V

    goto :goto_0

    .line 4934
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_1

    .line 4935
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;)V

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->tryUserLogin(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4948
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_2

    .line 4949
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    invoke-interface {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->onCancel()V

    goto :goto_0

    .line 4952
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;Lcom/metamoji/sd/SdError;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
