.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->newNoteTemplateBasedOnNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
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

    .line 6207
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6211
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 6212
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 6213
    new-instance v2, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v2}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 6214
    new-instance v3, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v3}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 6215
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 6217
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v4

    .line 6218
    invoke-virtual {v4, v1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v3

    .line 6219
    invoke-virtual {v2}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 6221
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 6222
    invoke-virtual {v4, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v2

    .line 6223
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6224
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v5

    goto :goto_0

    .line 6226
    :cond_0
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    goto :goto_0

    .line 6229
    :cond_1
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showDvmError(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    :goto_0
    if-nez v5, :cond_2

    goto :goto_1

    .line 6235
    :cond_2
    new-instance v2, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v2}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 6236
    invoke-interface {v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyFromModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 6237
    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    .line 6238
    invoke-interface {v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasRecordings(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    .line 6239
    sget-object v3, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v5, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 6242
    iget-object v3, v2, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 6245
    :try_start_0
    iget-object v3, v2, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 6248
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void

    .line 6256
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
