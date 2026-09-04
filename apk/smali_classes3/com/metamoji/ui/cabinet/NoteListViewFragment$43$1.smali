.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
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

.field final synthetic val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/sd/SdDriveDocumentManager;)V
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

    .line 4796
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

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

    .line 4796
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4799
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 4800
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    .line 4801
    const-string v1, "application/vnd.metamoji.model.atshare"

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4804
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4803
    iget-object v0, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-boolean v5, v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$reacquisition:Z

    invoke-static {v0, v1, v2, v4, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smeditShareNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    goto/16 :goto_4

    .line 4804
    :cond_0
    iget-boolean v1, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$isReadOnly:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 4810
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->getArgument()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4812
    const-string v4, "isOffline"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 4813
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 4817
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 4818
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_OfflineEditConfirm:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4819
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_OfflineEdit:I

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4826
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4833
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$3;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$3;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-object v3

    .line 4856
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 4857
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3

    .line 4861
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdateFlag()Z

    move-result v0

    .line 4869
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz v0, :cond_5

    .line 4862
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4864
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3

    .line 4869
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4870
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4872
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3

    .line 4879
    :cond_6
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 4881
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->memberMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 4882
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_8

    .line 4886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 4887
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_AS_READONLY_MESSAGE_WITH_NAME:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4888
    const-string v2, "%@"

    const-string v4, "%s"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4889
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4891
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_AS_READONLY_MESSAGE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4894
    :goto_2
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 4895
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4897
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4905
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$5;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$5;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4912
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$6;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$6;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-object v3

    .line 4806
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v4, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    return-object v3
.end method
