.class Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;
.super Ljava/lang/Object;
.source "NsCollaboCommandUseSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Landroid/view/View;)V
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

    .line 451
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 5

    if-eqz p1, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v1, "allowToJoinNote"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 459
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v3, v3, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v1, "allowToOpePage"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 462
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v1, "allowToSaveNote"

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    if-eq p1, v0, :cond_3

    .line 466
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 470
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v1, "allowToEditOths"

    invoke-static {v0, v1, v3}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    if-eq p1, v0, :cond_4

    .line 471
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 475
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v1, "allowToChgGrp"

    invoke-static {v0, v1, v3}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    if-eq p1, v0, :cond_5

    .line 476
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 480
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeMode:Z

    .line 564
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    if-eqz p1, :cond_12

    .line 484
    iget-boolean p1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preScoreEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_6

    move p1, v2

    goto :goto_0

    :cond_6
    move p1, v3

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeSecureRoom:Z

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    .line 486
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->access$001(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Landroid/view/View;)V

    return-void

    .line 490
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 492
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 493
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomId:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->roomId:Ljava/lang/String;

    .line 494
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    .line 495
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-virtual {v0, v4}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->setDialog(Lcom/metamoji/lib/dialog/UtDialog;)V

    .line 498
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeSecureRoom:Z

    if-nez v4, :cond_9

    if-eqz p1, :cond_a

    .line 499
    :cond_9
    iput-boolean v3, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->doCloseDialog:Z

    .line 502
    :cond_a
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->doInBackground()V

    .line 507
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeSecureRoom:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_10

    .line 508
    :cond_c
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 509
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomId:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomId:Ljava/lang/String;

    .line 510
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_email:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->email:Ljava/lang/String;

    .line 511
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_password:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->password:Ljava/lang/String;

    .line 512
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_qwd:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->qwd:Ljava/lang/String;

    .line 513
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-virtual {v0, v4}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->setDialog(Lcom/metamoji/lib/dialog/UtDialog;)V

    .line 514
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomType:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomType:Ljava/lang/String;

    .line 515
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_presenterArray:Ljava/util/List;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    .line 516
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_speakerArray:Ljava/util/List;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    .line 517
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_visitorArray:Ljava/util/List;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    .line 520
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_companyId:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->companyId:Ljava/lang/String;

    .line 523
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeSecureRoom:Z

    if-eqz v4, :cond_d

    .line 524
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoom:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->updateSecureRoom:Ljava/lang/Boolean;

    .line 525
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v4, v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoomPassword:Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->updateSecureRoomPassword:Ljava/lang/String;

    :cond_d
    if-eqz p1, :cond_f

    .line 531
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preMode2ParamDic:Ljava/util/Map;

    if-eqz p1, :cond_e

    .line 533
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preMode2ParamDic:Ljava/util/Map;

    .line 534
    const-string/jumbo v2, "validFlag"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v3

    const v4, 0x800c

    or-int/2addr v3, v4

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 539
    :cond_e
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-static {v2, p1, v3, v1, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamDicWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p1

    .line 541
    :goto_1
    iput-object p1, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->mode2ParamDic:Ljava/util/Map;

    .line 544
    :cond_f
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->doInBackground()V

    .line 548
    :cond_10
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;)V

    invoke-direct {p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 553
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_title:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->title:Ljava/lang/String;

    .line 555
    iput-object v1, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->date:Ljava/util/Date;

    .line 556
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-boolean v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    if-eqz v0, :cond_11

    .line 557
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->date:Ljava/util/Date;

    .line 559
    :cond_11
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->dialog:Lcom/metamoji/ui/dialog/NtDialog;

    .line 560
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->doInBackground()V

    return-void

    .line 564
    :cond_12
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;->val$view:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->access$101(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Landroid/view/View;)V

    return-void
.end method
