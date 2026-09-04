.class public Lcom/metamoji/ns/NsCollaboCommand;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;
    }
.end annotation


# static fields
.field static final COLLABO_TEMP_FILENAME:Ljava/lang/String; = "collaborize.state"

.field private static final TEMP_UNCOLLABO_FILENAME:Ljava/lang/String; = "uncollaborize.state"

.field static s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeCollaboMode()V
    .locals 9

    .line 2762
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    .line 2763
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$ConnectStatus:[I

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2925
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v3, v0}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void

    .line 2769
    :cond_1
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2774
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2779
    :cond_3
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->isRoomClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2780
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v3, v0}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void

    .line 2784
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 2788
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v6

    .line 2789
    const-string v0, "MMJNsShareSettings"

    invoke-virtual {v6, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/ns/NsCollaboSettings;

    if-nez v1, :cond_6

    :goto_0
    return-void

    .line 2793
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomId()Ljava/lang/String;

    move-result-object v7

    .line 2794
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomPassword()Ljava/lang/String;

    move-result-object v8

    .line 2795
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getShareType()Ljava/lang/String;

    move-result-object v4

    if-eqz v7, :cond_9

    if-eqz v4, :cond_7

    .line 2802
    const-string v0, "forSchool"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "forSchoolWithDeadline"

    .line 2803
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2804
    :cond_7
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_Msg_UnKnown_ShareType:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    .line 2808
    :cond_8
    new-instance v5, Lcom/metamoji/ns/NsCollaboCommand$33;

    invoke-direct {v5, v2, v3}, Lcom/metamoji/ns/NsCollaboCommand$33;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ns/NsCollaboManager;)V

    .line 2835
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$34;

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/ns/NsCollaboCommand$34;-><init>(Lcom/metamoji/ns/NsCollaboSettings;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void

    .line 2797
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "RoomId is nil..."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static changeOfflineEditMode()V
    .locals 2

    .line 2938
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void
.end method

.method static changePrivateMode()V
    .locals 2

    .line 2944
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppClearCopiedShareNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2945
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2947
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2949
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    .line 2950
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    .line 2951
    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->isCopiedShare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2952
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2953
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Not_Use_PrivateLayer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 2960
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void
.end method

.method public static changeRoomMode(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 2510
    sget v0, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_For_ReadOnly:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_For_Free:I

    .line 2511
    :goto_0
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$29;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$29;-><init>(Z)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, p0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 2625
    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2633
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 2639
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v1

    .line 2640
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2642
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/NsCollaboCommand$31;

    invoke-direct {v2, p1, p0, v1}, Lcom/metamoji/ns/NsCollaboCommand$31;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/NsCollaboDeviceInfo;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 2664
    :cond_1
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method

.method static checkDeviceId(Lcom/metamoji/ns/NsCollaboDeviceInfo;Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 2

    .line 2710
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2711
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/2addr v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2722
    invoke-interface {p2, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    .line 2725
    :cond_1
    invoke-interface {p1, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 2713
    :cond_2
    :goto_0
    new-instance p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;

    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    if-eqz p2, :cond_3

    .line 2715
    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->startupMsgRollbackAction:Lcom/metamoji/ns/INsCollaboAction;

    .line 2716
    iput-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->dispMessage:Z

    .line 2718
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->doInBackground()V

    return-void
.end method

.method static checkUserInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/NsCollaboDeviceInfo;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 2675
    invoke-static {p1, p0, p3}, Lcom/metamoji/ns/NsCollaboCommand;->checkDeviceId(Lcom/metamoji/ns/NsCollaboDeviceInfo;Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static closeDocumentWithOriginalNoteDescard()V
    .locals 4

    .line 228
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    .line 234
    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    .line 236
    invoke-static {v1, v2}, Lcom/metamoji/dvm/DvmUtil;->deleteDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CLOSE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static collaboReceiveAllDataExec(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 9

    .line 2425
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2429
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 2430
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_2

    .line 2441
    :cond_1
    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 2442
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 2443
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v3

    .line 2444
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2445
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_3

    .line 2447
    invoke-virtual {v1, v6}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v7

    if-eq v7, v2, :cond_2

    .line 2450
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/metamoji/ns/NsCollaboCommand;->isUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2451
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    :cond_2
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 2458
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->validateUpdatedBoothIdArray(Ljava/util/List;Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2460
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon()V

    .line 2463
    :cond_4
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;-><init>()V

    .line 2464
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    invoke-direct {v1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 2465
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->setBgTask(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V

    .line 2466
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$ReceiveAllDataFinished;->setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 2467
    invoke-virtual {v1, v4}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->setTargetPageControllers(Ljava/util/ArrayList;)V

    .line 2468
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->doInBackground()V

    return-void

    :cond_5
    :goto_2
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    .line 2435
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_6
    return-void
.end method

.method static collaboReceiveAllPageDataExec(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 8

    .line 3577
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3581
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3582
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    .line 3593
    :cond_1
    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 3594
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v3

    .line 3595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3596
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    .line 3598
    invoke-virtual {v2, v6}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v7

    .line 3599
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3600
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 3604
    invoke-virtual {v0, v5}, Lcom/metamoji/ns/NsCollaboSettings;->validateUpdatedBoothIdArray(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3606
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon()V

    .line 3609
    :cond_3
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 3610
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 3646
    invoke-virtual {v0, v4}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->setTargetPageControllers(Ljava/util/ArrayList;)V

    .line 3647
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->doInBackground()V

    return-void

    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    .line 3587
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_5
    return-void
.end method

.method static collaboReceiveBaseBoothDataExec(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 3

    .line 3522
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3526
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3527
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 3537
    :cond_1
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 3538
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 3574
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->doInBackground()V

    return-void

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    .line 3532
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_3
    return-void
.end method

.method static collaborizeNote(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/ns/NsCollaboBasicSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    .line 958
    const-string v3, "newDocID"

    const-string/jumbo v4, "template"

    const-string v5, "forSchoolGroupList"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 960
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    .line 961
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "collaborize.state"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 962
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 965
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v8

    .line 966
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/metamoji/sd/SdDriveDocumentManager;->exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 971
    invoke-static {v7}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_12

    .line 976
    :try_start_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    .line 977
    const-string v9, "$freenote"

    invoke-interface {v8}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 980
    const-string v9, "$sharenote"

    invoke-interface {p0, v9}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 982
    invoke-interface {v8}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v10

    .line 983
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 984
    const-string v12, "!type"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 985
    invoke-interface {v8, v11}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 989
    :cond_1
    invoke-interface {v8}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_2

    .line 991
    invoke-interface {v10}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    .line 992
    invoke-interface {v9, v10}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    move-object v10, v11

    goto :goto_1

    .line 996
    :cond_2
    invoke-interface {p0, v9}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 997
    invoke-interface {v8}, Lcom/metamoji/df/model/IModel;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    const-string v8, "password"

    if-eqz v0, :cond_3

    .line 1001
    :try_start_2
    invoke-interface {v9, v8, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1003
    :cond_3
    invoke-interface {v9, v8}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 1006
    :goto_2
    new-instance v0, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v0}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 1007
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 1010
    const-string v8, "MMJNsShareSettings"

    invoke-virtual {v0, v8}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ns/NsCollaboSettings;

    .line 1011
    invoke-virtual {v8, p1}, Lcom/metamoji/ns/NsCollaboSettings;->overwriteBasicSettingsFrom(Lcom/metamoji/ns/NsCollaboBasicSettings;)V

    const/4 v10, 0x1

    .line 1014
    invoke-virtual {v8, v10}, Lcom/metamoji/ns/NsCollaboSettings;->setSeedRevision(I)V

    .line 1017
    const-string v11, "docMetaData"

    invoke-interface {v9, v11}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    .line 1019
    invoke-interface {v11, v4, v12}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1020
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v4, v13}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    :cond_4
    const-string/jumbo v4, "title"

    move-object/from16 v13, p3

    invoke-interface {v11, v4, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_5
    const-string v4, "MMJNtDocumentSettings"

    invoke-virtual {v0, v4}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtDocumentSettings;

    const/4 v11, 0x0

    .line 1029
    invoke-virtual {v4, v11}, Lcom/metamoji/nt/NtDocumentSettings;->setShareTemplateDic(Ljava/util/Map;)V

    if-eqz v2, :cond_7

    .line 1034
    invoke-interface {v9, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1036
    invoke-interface {v9}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    const-string v13, "map"

    invoke-interface {v4, v13}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1037
    invoke-interface {v9, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1039
    :cond_6
    invoke-interface {v4, v5, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 1043
    :cond_7
    invoke-static {v9}, Lcom/metamoji/ns/NsCollaboCommand;->removePersonalTemplateLayerIfNeed(Lcom/metamoji/df/model/IModel;)V

    .line 1046
    const-string v2, "currentPage"

    invoke-interface {v9, v2, v12}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    if-eqz p8, :cond_b

    .line 1052
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v2

    .line 1053
    invoke-virtual {v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1054
    const-string v4, ""

    if-eqz v2, :cond_a

    .line 1055
    :try_start_3
    iget-object v5, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v5, :cond_8

    move-object v5, v4

    .line 1059
    :cond_8
    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    move-object v4, v2

    .line 1063
    :goto_3
    invoke-virtual {v8, v5}, Lcom/metamoji/ns/NsCollaboSettings;->setSubmitterDcUserId(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v8, v4}, Lcom/metamoji/ns/NsCollaboSettings;->setSubmitterNickName(Ljava/lang/String;)V

    move-object v4, v5

    :cond_a
    move-object/from16 v2, p9

    .line 1066
    invoke-static {p0, v9, v4, v2}, Lcom/metamoji/ns/NsCollaboCommand;->convertModelForSubmissionByStudent(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    .line 1067
    :cond_b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_c

    if-nez p8, :cond_c

    .line 1070
    invoke-interface {v9}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_c

    const/4 v4, 0x3

    .line 1074
    invoke-static {v4, v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 1075
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    goto :goto_4

    .line 1080
    :cond_c
    :goto_5
    invoke-virtual {v0}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    .line 1083
    new-instance v0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    :try_start_4
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->close()V

    if-eqz v1, :cond_d

    if-eqz p4, :cond_d

    move v12, v10

    :cond_d
    if-nez p4, :cond_e

    goto :goto_6

    :cond_e
    move v10, v12

    .line 1101
    :goto_6
    invoke-static {v7, v11, v10}, Lcom/metamoji/dvm/DvmUtil;->importDocumentBinaryToStorage(Ljava/io/File;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    .line 1102
    invoke-interface {v6, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1105
    const-string v0, "copiedDocID"

    if-eqz v1, :cond_f

    move-object/from16 v2, p6

    .line 1106
    :try_start_5
    invoke-static {p0, v1, v2}, Lcom/metamoji/ns/NsCollaboCommand;->copyDocumentToSharedDrive(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 1107
    invoke-interface {v6, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_10

    .line 1109
    invoke-interface {v6, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1112
    :cond_f
    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1117
    :cond_10
    :goto_7
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v6

    .line 978
    :cond_11
    :try_start_6
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0051"

    const-string v2, "document is not a note."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    .line 1085
    :try_start_7
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 1087
    throw v0

    .line 973
    :cond_12
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0050"

    const-string v1, "couldn\'t open document for collaborize."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 967
    :cond_13
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0080"

    const-string v1, "couldn\'t export document for collaborize."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 1117
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1130
    throw p0
.end method

.method static convertModelForSubmissionByStudent(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1187
    const-string v0, "forSchoolPersonalModeType"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1190
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_b

    const/4 v3, 0x1

    .line 1194
    invoke-static {v3, p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 1196
    const-string v4, "pageId"

    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1197
    invoke-static {v4, p2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_[unit]_draw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1199
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v7

    .line 1200
    :goto_1
    const-string/jumbo v8, "system:edit"

    if-eqz v7, :cond_2

    .line 1202
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 1203
    const-string v10, "layerType"

    invoke-interface {v7, v10}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1204
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1206
    const-string/jumbo v9, "system:personal"

    invoke-interface {v7, v10, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v9, "layerId"

    invoke-interface {v7, v9, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_2

    .line 1211
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "$draw"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1212
    const-string/jumbo v9, "unitId"

    invoke-static {v9, v6, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 1215
    :cond_0
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v7, v9

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v7, :cond_4

    .line 1224
    invoke-static {p0, v8}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1226
    invoke-static {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->createEmptyModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1228
    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 1231
    :cond_3
    invoke-interface {p1, v7, v5}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 1241
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_5
    move-object v4, v0

    :goto_4
    if-nez v4, :cond_7

    if-nez v2, :cond_6

    .line 1247
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1248
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1249
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, -0x1

    .line 1250
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1251
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    move-object v4, v2

    move v5, v3

    goto :goto_5

    :cond_7
    move v5, v1

    .line 1256
    :goto_5
    const-string/jumbo v6, "thumbModel"

    if-eqz v4, :cond_a

    .line 1257
    invoke-static {v4}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object v7

    if-nez v5, :cond_8

    .line 1259
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1261
    :cond_8
    invoke-interface {p1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1263
    const-string v4, "pagethumbnail"

    invoke-interface {p0, v4}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1264
    invoke-interface {p1, v6, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1266
    :cond_9
    const-string/jumbo v5, "v"

    invoke-interface {v4, v5, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 1268
    invoke-interface {v4, v3}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    goto :goto_6

    .line 1271
    :cond_a
    invoke-interface {p1, v6}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 1274
    :goto_6
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    .line 1278
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    return-void
.end method

.method static copyDocumentToSharedDrive(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1292
    new-instance v0, Lcom/metamoji/cm/mutable/Mutable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/mutable/Mutable;-><init>(Ljava/lang/Object;)V

    .line 1293
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 1294
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1295
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 1296
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1297
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 1299
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmErrCode;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to copyDocumentFromLocalDrive. errorCode = %s"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1301
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static createAndEditCollaboFileWithBasicSettings(Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/NsCollaboBasicSettings;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 781
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 786
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_4

    .line 790
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 807
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 813
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v7

    .line 816
    invoke-static {v7, v3}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 820
    :cond_0
    new-instance v13, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    const/4 v15, 0x0

    const/4 v0, 0x0

    invoke-direct {v13, v15, v15, v0}, Lcom/metamoji/nt/NtMRUDocList$MinItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 821
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 823
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 824
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$9;

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v14, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v14}, Lcom/metamoji/ns/NsCollaboCommand$9;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/util/HashMap;Lcom/metamoji/nt/NtMRUDocList$MinItem;Z)V

    if-eqz p6, :cond_1

    .line 914
    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    invoke-direct {v1, v15}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 915
    new-instance v3, Lcom/metamoji/ns/NsCollaboCommand$10;

    invoke-direct {v3, v1, v2, v0}, Lcom/metamoji/ns/NsCollaboCommand$10;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Ljava/util/List;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 931
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->doInBackground()V

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 934
    invoke-interface {v0, v4}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 809
    :cond_2
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0055"

    const-string v2, "no document-id."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_3
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0054"

    const-string v2, "editor page is already closed."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_4
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0053"

    const-string v2, "editing document is already collabo file."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_5
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0048"

    const-string v2, "editor not found."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method static createAndEditNormalDocumentFromCollaboFile(Z)V
    .locals 7

    .line 1990
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1995
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2001
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v1

    .line 2006
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2012
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    .line 2017
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getEncryptor()Lcom/metamoji/cm/PBE;

    move-result-object v3

    const/4 v4, 0x0

    .line 2020
    invoke-static {v4, v2}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2021
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 2025
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->beforeExportNote()V

    move-object v4, v1

    .line 2028
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$25;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/metamoji/ns/NsCollaboCommand$25;-><init>(ZLjava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/PBE;)V

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    if-eqz p0, :cond_1

    .line 2048
    sget-object p0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->UncollaborizeForCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    :goto_0
    move-object v3, p0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2028
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void

    .line 2008
    :cond_2
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0068"

    const-string v1, "editor page is already closed."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 1996
    :cond_3
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0067"

    const-string v1, "editing document is not a collabo file."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 1992
    :cond_4
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0066"

    const-string v1, "editor not found."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method static createInvitationCollaboFile(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V
    .locals 2

    .line 1498
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/NsCollaboCommand$18;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static createInvitationCollaboFileWithCompletionBlock(Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V
    .locals 4

    .line 1480
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1488
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v1

    .line 1489
    const-string v2, ".btshare"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1491
    invoke-static {v0, v2, p0}, Lcom/metamoji/ns/NsCollaboCommand;->createInvitationCollaboFile(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V

    return-void
.end method

.method public static createRestoreDocumentFromCollaboDocument(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;)V
    .locals 1

    .line 3477
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->collaboReceiveBaseBoothDataExec(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method static createRoom(ZLjava/util/Map;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 263
    iput-boolean p0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->deleteCurrentDoc:Z

    .line 264
    iput-object p1, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->shareTemplateDic:Ljava/util/Map;

    .line 265
    iput-boolean p2, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->submitByStudent:Z

    .line 266
    iput-boolean p3, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->isDragDrop:Z

    .line 267
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->doInBackground()V

    return-void

    .line 250
    :cond_1
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJID_MSG_NOT_REGIST_CABINETUSER_FOR_CREATESHARENOTE:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V

    if-eqz p1, :cond_2

    .line 253
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->closeDocumentWithOriginalNoteDescard()V

    :cond_2
    return-void
.end method

.method static createRoomMultiNotesToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$6;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/ns/NsCollaboCommand$6;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 523
    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->currentDriveId:Ljava/lang/String;

    .line 524
    iput-object p10, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->docIds:Ljava/util/List;

    .line 525
    iput-object p3, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->date:Ljava/util/Date;

    .line 526
    iput-object p4, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->roomSettingList:Ljava/util/List;

    .line 527
    iput-object p2, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->distributeSharedDrives:Ljava/util/List;

    .line 528
    iget-object p0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    iput-object p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->secureRoomPassword:Ljava/lang/String;

    .line 530
    invoke-static {p5, p6, p7, p8, p9}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamDicWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    .line 531
    iput-object p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->paramDic:Ljava/util/Map;

    .line 533
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->doInBackground()V

    return-void
.end method

.method static createRoomSingleNoteToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/NtDocument;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 551
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    .line 552
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v5

    .line 554
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v15

    .line 557
    invoke-static {v4, v5}, Lcom/metamoji/dvm/DvmUtil;->isNewOpenDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v15}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 563
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDocument;->getEncryptor()Lcom/metamoji/cm/PBE;

    move-result-object v0

    .line 567
    new-instance v1, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v5, v2}, Lcom/metamoji/nt/NtMRUDocList$MinItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 568
    new-instance v2, Lcom/metamoji/ns/NsCollaboCommand$7;

    invoke-direct {v2, v4, v5, v0}, Lcom/metamoji/ns/NsCollaboCommand$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;)V

    sget-object v16, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v17, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$8;

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct/range {v0 .. v14}, Lcom/metamoji/ns/NsCollaboCommand$8;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;ZLcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V

    const/4 v1, 0x1

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p0, v15

    move-object/from16 p2, v16

    move-object/from16 p3, v17

    move-object/from16 p4, v18

    move-object/from16 p1, v19

    invoke-virtual/range {p0 .. p6}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void
.end method

.method static createRoomSingleNoteToSingleBox(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/nt/NtCommand;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/metamoji/nt/NtCommand;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Z)V"
        }
    .end annotation

    .line 674
    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p8

    const/4 v0, 0x0

    move-object/from16 v1, p18

    .line 676
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 677
    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 678
    const-string/jumbo v3, "tagList"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 681
    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 682
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    move/from16 v4, p29

    .line 683
    iput-boolean v4, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->submitByStudent:Z

    .line 686
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->companyId:Ljava/lang/String;

    .line 688
    iput-object p7, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->userId:Ljava/lang/String;

    .line 689
    iput-object p4, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->email:Ljava/lang/String;

    .line 690
    iput-object p5, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->password:Ljava/lang/String;

    .line 691
    iput-object p6, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->qwd:Ljava/lang/String;

    move-object/from16 p3, p11

    .line 692
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomType:Ljava/lang/String;

    move-object/from16 p3, p14

    .line 693
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalPresenterArray:Ljava/util/List;

    move-object/from16 p3, p15

    .line 694
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalSpeakerArray:Ljava/util/List;

    move-object/from16 p3, p16

    .line 695
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalVisitorArray:Ljava/util/List;

    .line 696
    iput-boolean p9, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->deleteCurrentDoc:Z

    move-object/from16 p3, p12

    .line 697
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->title:Ljava/lang/String;

    move-object/from16 p3, p13

    .line 698
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->date:Ljava/util/Date;

    move-object/from16 p3, p17

    .line 699
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeCommand:Lcom/metamoji/nt/NtCommand;

    .line 700
    iput-object v2, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeSharedDriveId:Ljava/lang/String;

    .line 701
    iput-object v1, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeSharedDriveTags:Ljava/util/List;

    move-object/from16 p3, p19

    .line 702
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributePackage:Ljava/lang/String;

    move-object/from16 p3, p20

    .line 703
    iput-object p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeClass:Ljava/lang/String;

    const/4 p3, 0x1

    if-eqz p10, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, v0

    .line 704
    :goto_0
    iput-boolean p4, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->deleteCurrentDocEvenIfCancel:Z

    move-object/from16 p4, p22

    .line 706
    iput-object p4, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    if-eqz p8, :cond_1

    .line 710
    const-string/jumbo p4, "srcInfo"

    invoke-virtual {p8, p4}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 712
    const-string p5, "discard"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-static {p6}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 713
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-interface {p4, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object p2

    .line 715
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorPage()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 717
    invoke-virtual {p1, p2, p4}, Lcom/metamoji/noteanytime/EditorActivity;->setSrcInfo(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/util/Map;)V

    .line 718
    iput-boolean p3, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->deleteCurrentDoc:Z

    :cond_1
    if-eqz p0, :cond_2

    .line 727
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 729
    iget-object p0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->secureRoomPassword:Ljava/lang/String;

    :cond_2
    move-object/from16 p0, p21

    .line 746
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->groupList:Ljava/util/List;

    move-object/from16 p0, p23

    .line 748
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->ownerId:Ljava/lang/String;

    move/from16 p0, p24

    .line 750
    iput-boolean p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->scoreEnable:Z

    move-object/from16 p0, p25

    .line 751
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-object/from16 p0, p26

    .line 752
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-object/from16 p0, p27

    .line 753
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->startDate:Ljava/util/Date;

    move-object/from16 p0, p28

    .line 754
    iput-object p0, v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->endDate:Ljava/util/Date;

    .line 755
    invoke-virtual {v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->doInBackground()V

    return-void
.end method

.method public static createRoomSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v14, p5

    move-object/from16 v8, p8

    move/from16 v1, p10

    move-object/from16 v2, p13

    .line 277
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v5

    .line 286
    const-string v0, ""

    const/4 v15, 0x0

    if-nez v2, :cond_4

    .line 288
    invoke-virtual {v5}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v4

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 297
    const-string v4, "%s_%s"

    filled-new-array {v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v6, v3

    goto :goto_1

    :cond_4
    move-object v6, v15

    .line 305
    :goto_1
    new-instance v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    move-object/from16 v4, p9

    invoke-direct {v3, v4}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;-><init>(Ljava/util/Map;)V

    .line 306
    iput-boolean v1, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    move-object/from16 v10, p1

    .line 307
    iput-object v10, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_email:Ljava/lang/String;

    move-object/from16 v13, p4

    .line 308
    iput-object v13, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    .line 309
    iput-object v14, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_nickName:Ljava/lang/String;

    move-object/from16 v4, p6

    .line 310
    iput-object v4, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_loginName:Ljava/lang/String;

    .line 311
    iput-object v0, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_title:Ljava/lang/String;

    .line 312
    iput-object v8, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    .line 314
    iput-object v2, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_docIds:Ljava/util/List;

    .line 316
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$4;

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v7, p7

    move-object/from16 v4, p12

    invoke-direct/range {v0 .. v14}, Lcom/metamoji/ns/NsCollaboCommand$4;-><init>(ZLjava/util/List;Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_action:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;

    .line 423
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$5;

    invoke-direct {v0, v8}, Lcom/metamoji/ns/NsCollaboCommand$5;-><init>(Ljava/util/Map;)V

    iput-object v0, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_cancelAction:Lcom/metamoji/ns/INsCollaboAction;

    .line 434
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 435
    iget-object v1, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverDriveId:Ljava/lang/String;

    .line 437
    const-string/jumbo v2, "tagList"

    const-string v4, "driveId"

    if-nez p13, :cond_a

    if-eqz p10, :cond_5

    if-nez v1, :cond_a

    :cond_5
    if-eqz p11, :cond_6

    goto :goto_3

    .line 443
    :cond_6
    invoke-virtual {v5}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    .line 444
    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v6

    .line 445
    invoke-virtual {v6}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v6

    .line 448
    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 450
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 452
    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v7, v15

    .line 455
    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v6, :cond_a

    .line 457
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 459
    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_9
    invoke-virtual {v3, v5}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addDistributeSharedDriveData(Ljava/util/Map;)V

    .line 469
    :cond_a
    :goto_3
    iget-object v5, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverTags:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 471
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 472
    invoke-interface {v6, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_b

    .line 475
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_b
    invoke-virtual {v3, v6}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addDistributeSharedDriveData(Ljava/util/Map;)V

    .line 478
    iput-object v15, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverDriveId:Ljava/lang/String;

    .line 479
    iput-object v15, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverTags:Ljava/util/List;

    .line 482
    :cond_c
    const-string v0, "createRoomSub"

    invoke-virtual {v3, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static createRoomSubForSchool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3392
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createInitClassDic()Ljava/util/Map;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Lcom/metamoji/ns/NsCollaboCommand;->createRoomSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;ZZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 5

    .line 3236
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3238
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3239
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RECEIVE_ALL_DATA:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3241
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3242
    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_0

    .line 3246
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->existUpdatedBooth(Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3258
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 3259
    sget v3, Lcom/metamoji/noteanytime/R$string;->Share_Check_Receive_All_Page_Data:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3260
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHARE_CHECK_RECEIVE_ALL_PAGE_DATA_UPDATE:I

    new-instance v4, Lcom/metamoji/ns/NsCollaboCommand$39;

    invoke-direct {v4, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$39;-><init>(Ljava/util/List;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3268
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHARE_CHECK_RECEIVE_ALL_PAGE_DATA_RUN_AS_IT_IS:I

    new-instance v4, Lcom/metamoji/ns/NsCollaboCommand$40;

    invoke-direct {v4, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$40;-><init>(Ljava/util/List;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3276
    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3278
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3279
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 3280
    new-instance v2, Lcom/metamoji/ns/NsCollaboCommand$41;

    invoke-direct {v2, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$41;-><init>(Ljava/util/List;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3290
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 3291
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/UiAlertDialog;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    .line 3295
    :cond_1
    invoke-interface {p0, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method

.method public static getNickNamesMapFromServer(Ljava/util/List;Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2984
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2985
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2986
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2987
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 2988
    aget-object v4, v2, v4

    const-string/jumbo v5, "userID"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 2989
    aget-object v2, v2, v4

    const-string/jumbo v4, "roomID"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2996
    :cond_2
    new-instance p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;-><init>(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;)V

    .line 2997
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->memberDicArray:Ljava/util/List;

    .line 2998
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->doInBackground()V

    return-void
.end method

.method public static handleCollaboBecomeClerk()V
    .locals 2

    .line 1872
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeClerk(Z)V

    return-void
.end method

.method public static handleCollaboBecomePresenter()V
    .locals 1

    const/4 v0, 0x0

    .line 1835
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboBecomePresenter(Z)V

    return-void
.end method

.method public static handleCollaboBecomePresenter(Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 1844
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->lockScreen(Z)V

    .line 1848
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    return-void
.end method

.method public static handleCollaboBrowseOwnerSite()V
    .locals 3

    .line 2481
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2482
    sget v0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Browse_Owner_Site:I

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 2486
    :cond_0
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 2487
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->doInBackground()V

    return-void
.end method

.method public static handleCollaboCommandUseSetting()V
    .locals 2

    .line 1908
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1909
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->roomId:Ljava/lang/String;

    .line 1910
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->doInBackground()V

    return-void
.end method

.method public static handleCollaboDisableWriteAccess()V
    .locals 1

    const/4 v0, 0x1

    .line 2499
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->changeRoomMode(Z)V

    return-void
.end method

.method public static handleCollaboDistribute(Z)V
    .locals 4

    if-eqz p0, :cond_7

    .line 1314
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->getDistributeCommandInfo()Ljava/util/Map;

    move-result-object v1

    .line 1317
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->clearDistributeCommandInfo()V

    if-eqz v1, :cond_7

    .line 1319
    const-string p0, "distributeCommand"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtCommand;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    const-string v0, "distributeAddressArray"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1324
    sget-object v2, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 1378
    :cond_1
    const-string p0, "distributePackage"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1379
    const-string v0, "distributeClass"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 1380
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1381
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1382
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboCommand$15;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboCommand$15;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_2
    :goto_0
    return-void

    .line 1354
    :cond_3
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 1355
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    .line 1346
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$13;

    invoke-direct {v1, v0}, Lcom/metamoji/ns/NsCollaboCommand$13;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 1337
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$12;

    invoke-direct {v1, v0}, Lcom/metamoji/ns/NsCollaboCommand$12;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 1327
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$11;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboCommand$11;-><init>()V

    invoke-virtual {p0, v0, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 1397
    :cond_7
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1398
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method public static handleCollaboDistributeByApplication()V
    .locals 1

    const/4 v0, 0x0

    .line 1439
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByApplication([Ljava/lang/String;)V

    return-void
.end method

.method public static handleCollaboDistributeByApplication([Ljava/lang/String;)V
    .locals 2

    .line 1443
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1447
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1451
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 1457
    :cond_2
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$17;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$17;-><init>(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;)V

    .line 1469
    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method static handleCollaboDistributeByCustomApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1793
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1797
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorPage()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/metamoji/noteanytime/EditorActivity;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1801
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 1807
    :cond_2
    new-instance v2, Lcom/metamoji/ns/NsCollaboCommand$23;

    invoke-direct {v2, v1, v0, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$23;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-static {v2}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboDistributeByFile()V
    .locals 1

    .line 1702
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$22;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboCommand$22;-><init>()V

    .line 1782
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboDistributeUrlByApplication()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1545
    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplication(Z[Ljava/lang/String;)V

    return-void
.end method

.method public static handleCollaboDistributeUrlByApplication(Z[Ljava/lang/String;)V
    .locals 1

    .line 1551
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    sget p1, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Distribute_URL_By_Application:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 1557
    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplicationDirect([Ljava/lang/String;)V

    return-void

    .line 1559
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_Distribute_ShareNote_Url_To_Application:I

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$19;

    invoke-direct {v0, p1}, Lcom/metamoji/ns/NsCollaboCommand$19;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static handleCollaboDistributeUrlByApplicationDirect([Ljava/lang/String;)V
    .locals 1

    .line 1570
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$20;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$20;-><init>([Ljava/lang/String;)V

    .line 1601
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboEnableWriteAccess()V
    .locals 1

    const/4 v0, 0x0

    .line 2506
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->changeRoomMode(Z)V

    return-void
.end method

.method public static handleCollaboManageMember()V
    .locals 2

    .line 1897
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1898
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->roomId:Ljava/lang/String;

    .line 1899
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->doInBackground()V

    return-void
.end method

.method public static handleCollaboModeChange(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V
    .locals 1

    .line 2738
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 2739
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2743
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand$46;->$SwitchMap$com$metamoji$ns$NsCollaboManager$CollaboMode:[I

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    :goto_0
    return-void

    .line 2752
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->changeOfflineEditMode()V

    return-void

    .line 2748
    :cond_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->changePrivateMode()V

    return-void

    .line 2745
    :cond_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->changeCollaboMode()V

    return-void
.end method

.method public static handleCollaboNewDocument(ZLjava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 163
    invoke-static {p0, p1, v0, p2}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZLjava/util/Map;ZZ)V

    return-void
.end method

.method public static handleCollaboNewDocument(ZLjava/util/Map;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Title:I

    .line 176
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ns/NsCollaboCommand$1;

    invoke-direct {p3, p1}, Lcom/metamoji/ns/NsCollaboCommand$1;-><init>(Ljava/util/Map;)V

    .line 175
    invoke-static {p0, p2, p3}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void

    .line 190
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->validateShareTemplateDic(Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Title:I

    .line 193
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/NsCollaboCommand$2;

    invoke-direct {p2}, Lcom/metamoji/ns/NsCollaboCommand$2;-><init>()V

    .line 192
    invoke-static {p0, p1, p2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void

    .line 205
    :cond_1
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/ns/NsCollaboCommand$3;-><init>(ZLjava/util/Map;ZZ)V

    .line 220
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboNewDocument(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-static {p0, v0, v1, p1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZLjava/util/Map;ZZ)V

    return-void
.end method

.method public static handleCollaboNewNormalDocument(Z)V
    .locals 1

    .line 1960
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$24;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$24;-><init>(Z)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboReceiveAllData()V
    .locals 3

    .line 2416
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ShareAllPageDataConfirm:I

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$28;

    invoke-direct {v1}, Lcom/metamoji/ns/NsCollaboCommand$28;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static handleCollaboResignClerk()V
    .locals 2

    .line 1884
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeClerk(Z)V

    return-void
.end method

.method public static handleCollaboResignPresenter()V
    .locals 2

    .line 1860
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    return-void
.end method

.method public static handleCollaboSettings()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1921
    invoke-static {v2, v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->showCollaboSettings(ZZLcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboUserListBecomePresenter()V
    .locals 5

    .line 2536
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2540
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2544
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2548
    :cond_2
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 2554
    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$string;->Share_Msg_UserList_Become_Presenter:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 2556
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2557
    iget-object v2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2558
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 2559
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 2560
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2561
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/ns/NsCollaboCommand$30;

    invoke-direct {v4, v0}, Lcom/metamoji/ns/NsCollaboCommand$30;-><init>(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2580
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 2582
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2583
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 2584
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleCollaboUserListBecomePresenter"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleCollaboUserListResignPresenter()V
    .locals 3

    .line 2596
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2600
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2604
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2608
    :cond_2
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 2612
    :cond_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(ZLjava/lang/String;)V

    return-void
.end method

.method public static handleRestoreCollaboDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3420
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3421
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_COLLABORESTORECOLLABODOCUMENTDLG_TITLE:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 3426
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$43;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$43;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleSubmitByStudent()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-static {v2, v0, v1, v2}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZLjava/util/Map;ZZ)V

    return-void
.end method

.method public static isShareNoteOwner()Z
    .locals 4

    .line 3312
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 3313
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3314
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3318
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 3322
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3323
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 3327
    :cond_2
    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboSettings;

    if-nez v2, :cond_3

    return v1

    .line 3331
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboSettings;->getOwnerDcUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return v1

    .line 3335
    :cond_4
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public static isUpdatedBoothId(Ljava/lang/String;)Z
    .locals 3

    .line 3159
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3163
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3164
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 3167
    :cond_1
    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 3168
    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboCommand;->isUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method static isUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3176
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->containsUpdatedBoothIdArrayFromPageId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$collaboReceiveAllPageDataExec$6(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/ns/INsCollaboAction;Z)V
    .locals 4

    .line 3612
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3614
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ShareRecvPageDataDisconnected:I

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 3621
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3622
    new-instance v3, Lcom/metamoji/ns/NsCollaboCommand$45;

    invoke-direct {v3, v2}, Lcom/metamoji/ns/NsCollaboCommand$45;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 3628
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(ILcom/metamoji/ns/INsCollaboAction;)V

    .line 3631
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    .line 3638
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->getResult()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 3639
    invoke-interface {p1, p0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    goto :goto_1

    .line 3642
    :cond_2
    invoke-interface {p1, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic lambda$collaboReceiveBaseBoothDataExec$5(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;Lcom/metamoji/ns/INsCollaboAction;Z)V
    .locals 4

    .line 3540
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3542
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ShareRecvPageDataDisconnected:I

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 3549
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3550
    new-instance v3, Lcom/metamoji/ns/NsCollaboCommand$44;

    invoke-direct {v3, v2}, Lcom/metamoji/ns/NsCollaboCommand$44;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 3556
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(ILcom/metamoji/ns/INsCollaboAction;)V

    .line 3559
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    .line 3566
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->getResult()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 3567
    invoke-interface {p1, p0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    goto :goto_1

    .line 3570
    :cond_2
    invoke-interface {p1, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic lambda$createRestoreDocumentFromCollaboDocument$3(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eqz p0, :cond_1

    .line 3489
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 3495
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 3498
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 3499
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    .line 3502
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_1
    return-void

    .line 3506
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_RESTORE_COLLABODOCUMENT_TITLE_FORMAT:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 3508
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 3509
    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3510
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3511
    const-string v1, "%s%s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3514
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 3515
    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->title:Ljava/lang/String;

    .line 3516
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->groupList:Ljava/util/List;

    .line 3517
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->doInBackground()V

    return-void
.end method

.method static synthetic lambda$createRestoreDocumentFromCollaboDocument$4(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 3480
    invoke-interface {p0, p1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_0
    return-void

    .line 3486
    :cond_1
    new-instance p2, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;)V

    invoke-static {p2}, Lcom/metamoji/ns/NsCollaboCommand;->collaboReceiveAllPageDataExec(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method static synthetic lambda$execActionAterReceiveAllData$2(Lcom/metamoji/ui/dialog/UiAlertDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 3291
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "handleCollaboNewNormalDocument"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCollaboDistribute$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1357
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1358
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1362
    :cond_0
    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1367
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$14;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboCommand$14;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method static synthetic lambda$handleCollaboDistribute$1(ZLandroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 1399
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1400
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_Distribute_ShareNote:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1401
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x3

    .line 1402
    new-array v2, v2, [Ljava/lang/CharSequence;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    .line 1406
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Distribute_URL_By_Application:I

    .line 1407
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    if-eqz p0, :cond_0

    .line 1408
    sget p0, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Distribute_Note_Cancel:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v2, v1

    .line 1409
    new-instance p0, Lcom/metamoji/ns/NsCollaboCommand$16;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboCommand$16;-><init>()V

    invoke-virtual {v0, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1428
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1430
    new-instance p0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1431
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "handleCollaboDistribute"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static onCollaboDocumentClosed()V
    .locals 2

    .line 3080
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->setDelayJumpPageId(Ljava/lang/String;)V

    .line 3083
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    if-eqz v0, :cond_0

    .line 3084
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    .line 3087
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->terminateOnCloseCollaboDocument()V

    return-void
.end method

.method public static onCollaboDocumentOpened(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 5

    .line 3022
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->initializeOnOpenedCollaboDocument()V

    .line 3025
    sget-object p0, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    if-eqz p0, :cond_1

    .line 3026
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 3027
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3031
    :try_start_0
    sget-object v2, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    invoke-virtual {v2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    .line 3034
    new-instance v2, Lcom/metamoji/ns/NsCollaboCommand$35;

    invoke-direct {v2, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$35;-><init>(Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    .line 3051
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3054
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3055
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3058
    :try_start_1
    const-string v0, "NsCollaboCommand.onCollaboDocumentOpened"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3059
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "onCollaboDocumentOpened."

    invoke-direct {v0, v2, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3061
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 3062
    throw p0

    .line 3065
    :cond_1
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$36;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboCommand$36;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onCollaboDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 0

    .line 3014
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->initializeOnOpeningCollaboDocument()V

    return-void
.end method

.method public static onNormalDocumentOpened(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 2

    .line 3127
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3129
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$38;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$38;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static onNormalDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 2

    .line 3099
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3101
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$37;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$37;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static processingBgTaskForLogin()Z
    .locals 1

    .line 146
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static removePersonalTemplateLayerIfNeed(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 1135
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1140
    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 1144
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1145
    const-string v2, "layerType"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    const-string/jumbo v3, "system:personal_template"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 1148
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->destroy()V

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 1154
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static removeTeacherPersonalTemplateLayerIfNeed(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 1161
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1163
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 1165
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1166
    const-string v2, "layerType"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1167
    const-string/jumbo v3, "system:teacher_personal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 1169
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->destroy()V

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 1174
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static renewIdentifiersMergingPersonalLayer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 5

    .line 2212
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 2213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 2215
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 2217
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 2219
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 2220
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2222
    const-string v3, "layerType"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2224
    const-string/jumbo v4, "system:personal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "system:teacher_personal"

    .line 2225
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "system:personal_template"

    .line 2226
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2227
    :cond_0
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 2228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 2235
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    .line 2240
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p0

    .line 2241
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v1

    const/4 v2, 0x0

    .line 2242
    invoke-static {v0, p0, v1, v2}, Lcom/metamoji/nt/NtPasteDataUtil;->renewIdentifiers(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public static reopenCurrentNote()V
    .locals 7

    .line 3344
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3349
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3354
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3360
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3367
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getEncryptor()Lcom/metamoji/cm/PBE;

    move-result-object v1

    move-object v3, v1

    .line 3369
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$42;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ns/NsCollaboCommand$42;-><init>(Ljava/lang/String;Lcom/metamoji/cm/PBE;)V

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void

    .line 3362
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0063"

    const-string v2, "no document-id."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 3356
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0062"

    const-string v2, "note is not opened."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 3351
    :cond_2
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0061"

    const-string v2, "editor page is not opened."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 3346
    :cond_3
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0060"

    const-string v2, "editor not found."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static restoreCollaboDocumentSubInner(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;)V
    .locals 8

    .line 3449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 3453
    const-string v1, "limitSequenceNo"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3455
    :cond_0
    const-string p3, "limitTimeStamp"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3460
    const-string p3, "collaboRestoreProcInfo"

    invoke-interface {v7, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    const-string p3, "driveId"

    invoke-interface {v7, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    const-string p3, "docId"

    invoke-interface {v7, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    const-string p3, "restoreDate"

    invoke-interface {v7, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    const-string p2, "connectRoomAfterCommand"

    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RESTORE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-interface {v7, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;Ljava/util/Map;)V

    return-void
.end method

.method static showCollaboSettings(ZZLcom/metamoji/ns/INsCollaboAction;)V
    .locals 1

    .line 1932
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1936
    :cond_0
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;-><init>()V

    .line 1937
    iput-boolean p0, v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    .line 1938
    iput-boolean p1, v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    if-eqz p2, :cond_1

    .line 1940
    iput-object p2, v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_action:Lcom/metamoji/ns/INsCollaboAction;

    .line 1947
    :cond_1
    const-string p0, "CollaboSettings"

    invoke-virtual {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static uncollaborizeNote(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 2063
    const-string v0, "currentLayer"

    const-string v1, "forSchoolGroupList"

    const-string v2, "chatdata"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 2064
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "uncollaborize.state"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2067
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 2068
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 2072
    invoke-static {v4}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_10

    .line 2077
    :try_start_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 2078
    const-string v7, "$sharenote"

    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2081
    const-string v7, "$freenote"

    invoke-interface {p0, v7}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    .line 2083
    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v8

    .line 2084
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2085
    const-string v10, "!type"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2086
    invoke-interface {v6, v9}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2090
    :cond_1
    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_2

    .line 2092
    invoke-interface {v8}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 2093
    invoke-interface {v7, v8}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    move-object v8, v9

    goto :goto_1

    .line 2097
    :cond_2
    invoke-interface {p0, v7}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 2098
    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->destroy()V

    .line 2102
    new-instance v6, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v6}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 2103
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 2106
    const-string v8, "MMJNsShareSettings"

    invoke-virtual {v6, v8}, Lcom/metamoji/df/controller/SettingsManager;->resetSettings(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v6}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    .line 2110
    const-string v6, "canonicalPageList"

    invoke-interface {v7, v6}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 2113
    invoke-interface {v7, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2115
    invoke-interface {v7, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 2119
    invoke-interface {v6, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2121
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 2122
    instance-of v9, v8, Lcom/metamoji/df/model/IModel;

    if-eqz v9, :cond_3

    .line 2123
    check-cast v8, Lcom/metamoji/df/model/IModel;

    invoke-interface {v8}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_2

    .line 2128
    :cond_4
    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->destroy()V

    .line 2133
    :cond_5
    invoke-interface {v7, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2135
    invoke-interface {v7, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 2137
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->destroy()V

    .line 2142
    :cond_6
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_3
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/4 v6, -0x1

    .line 2144
    invoke-interface {v1, v0, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    .line 2148
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v7

    :goto_4
    if-eqz v7, :cond_c

    .line 2150
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    .line 2151
    const-string v9, "layerType"

    invoke-interface {v7, v9}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2152
    const-string/jumbo v10, "system:private"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2154
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 2155
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->destroy()V

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 2157
    :cond_7
    const-string/jumbo v10, "system:edit"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v6, v2

    goto :goto_6

    .line 2161
    :cond_8
    const-string/jumbo v10, "system:common"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "system:personal_template"

    .line 2164
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    const-string/jumbo v10, "system:teacher_personal"

    .line 2166
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "system:personal"

    .line 2167
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2168
    :cond_a
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 2169
    invoke-interface {v7}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v7, v8

    goto :goto_4

    .line 2178
    :cond_c
    invoke-interface {v1, v0, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 2185
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_3

    .line 2189
    :cond_d
    new-instance v0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2191
    :try_start_2
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 2197
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p0, v5, v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 2198
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2199
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2203
    :cond_e
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v5

    .line 2079
    :cond_f
    :try_start_3
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0070"

    const-string v2, "document is not a collabo note."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 2191
    :try_start_4
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 2193
    throw v0

    .line 2074
    :cond_10
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0069"

    const-string v1, "couldn\'t open document for uncollaborize."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 2069
    :cond_11
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0068"

    const-string v1, "couldn\'t export document for uncollaborize."

    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 2203
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2204
    throw p0
.end method

.method static uncollaborizeNoteMergingLayers(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/PBE;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cm/PBE;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2256
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    .line 2257
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "uncollabolize.atdoc"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2258
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "uncollabolize.hybsinternal"

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2259
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2260
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2265
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v8

    .line 2267
    invoke-virtual {v8, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v0

    .line 2268
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2269
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2278
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2279
    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 2280
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    .line 2281
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2282
    const-string v5, "name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    const-string v0, "product"

    const-string v5, "Android-Share-G-ClassRoom"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    const-string/jumbo v0, "version"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    const-string v0, "generator"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    const-string v0, "dropPrivateLayer"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    const-string v0, "included-recordings"

    sget-object v4, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const-string/jumbo v0, "schoolLayerInfo"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 2305
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4, v2, v7, v2, p1}, Lcom/metamoji/nt/NtDocument;->attachmentTicketsForExportingAsHayabusadoc(Lcom/metamoji/df/model/IModel;ZLjava/lang/String;ZLjava/util/Map;)Ljava/util/HashSet;

    move-result-object p1

    .line 2306
    const-string v2, "attachmentTickets"

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->renewIdentifiersMergingPersonalLayer(Lcom/metamoji/df/model/IModelManager;)V

    .line 2319
    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->exportModelManager(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p1

    .line 2320
    sget-object p2, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, p2, :cond_2

    .line 2325
    :try_start_2
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v8, p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 2331
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2332
    new-instance p1, Lcom/metamoji/ns/NsCollaboCommand$26;

    invoke-direct {p1, v4}, Lcom/metamoji/ns/NsCollaboCommand$26;-><init>(Lcom/metamoji/cm/PBE;)V

    .line 2338
    const-string p2, "doc_decrypter"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    sget-object p1, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    invoke-static {v1, v6, p1, p0, v7}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->importArchivedDoc(Ljava/io/File;Ljava/io/File;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p0

    .line 2341
    sget-object p1, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-ne p1, p0, :cond_1

    .line 2349
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v8, p0, v7, v7, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 2350
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2351
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2353
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/NsCollaboCommand$27;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/NsCollaboCommand$27;-><init>(Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2362
    :goto_0
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2363
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v7

    .line 2342
    :cond_1
    :try_start_3
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string p1, "AP00114"

    const-string p2, "failed to import from atdoc"

    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2321
    :cond_2
    :try_start_4
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP00113"

    const-string v0, "failed to export as atdoc"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2325
    :try_start_5
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v8, p0, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 2326
    throw p1

    .line 2271
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP0112"

    const-string v0, "Failed to quick view document: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 2362
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2363
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2364
    throw p0
.end method

.method public static updatePageInfoIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 3186
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon(Ljava/lang/String;)V

    return-void
.end method

.method public static updatePageInfoIcon(Ljava/lang/String;)V
    .locals 1

    .line 3193
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3195
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3198
    invoke-interface {v0, p0}, Lcom/metamoji/nt/INtEditor;->updatePageListInfoIcon(Ljava/lang/String;)V

    .line 3200
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->updatePageButtonInfoIcon()V

    :cond_0
    return-void
.end method

.method public static updatePresenterViewingPageIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 3211
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->updatePresenterViewingPageIcon(Ljava/lang/String;)V

    return-void
.end method

.method public static updatePresenterViewingPageIcon(Ljava/lang/String;)V
    .locals 1

    .line 3217
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3219
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3222
    invoke-interface {v0, p0}, Lcom/metamoji/nt/INtEditor;->updatePresenterViewingPageIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static updateSchoolPageTypeIcon(Ljava/lang/String;)V
    .locals 1

    .line 3401
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3403
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3406
    invoke-interface {v0, p0}, Lcom/metamoji/nt/INtEditor;->updatePageListSchoolPageTypeIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static uploadCollaboFileToGalleryWithCompletionBlock(Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V
    .locals 2

    .line 1613
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1619
    :cond_0
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$21;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$21;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboCommand;->createInvitationCollaboFileWithCompletionBlock(Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V

    return-void
.end method
