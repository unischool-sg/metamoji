.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->createDocumentFromDocumentTemplate(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$noteTemplateDocId:Ljava/lang/String;

.field final synthetic val$noteTemplateDriveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3922
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$noteTemplateDocId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$noteTemplateDriveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3926
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$noteTemplateDocId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3927
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 3928
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 3929
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 3930
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$noteTemplateDriveId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 3931
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$noteTemplateDocId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v1

    .line 3932
    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 3933
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3934
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void

    .line 3939
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3947
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method
