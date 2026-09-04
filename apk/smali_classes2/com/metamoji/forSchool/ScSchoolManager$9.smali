.class Lcom/metamoji/forSchool/ScSchoolManager$9;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1523
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1527
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalNameForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v0

    .line 1530
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1532
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    if-eqz v2, :cond_f

    if-nez v0, :cond_0

    .line 1536
    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->hidePersonalModeInfo()V

    return-void

    .line 1539
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    .line 1541
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1542
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1544
    :goto_0
    iget-object v4, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v4, v4, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-static {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->-$$Nest$fget_isTeacher(Lcom/metamoji/forSchool/ScSchoolManager;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-static {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->-$$Nest$fget_isTeacher(Lcom/metamoji/forSchool/ScSchoolManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_2

    goto/16 :goto_7

    .line 1547
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 1548
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    .line 1549
    iget-object v4, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v4

    .line 1550
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v5

    .line 1551
    invoke-virtual {v5}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    .line 1554
    iget-object v8, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 1555
    iget-object v9, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v4, :cond_3

    if-eqz v8, :cond_3

    .line 1558
    const-string v10, "group-id"

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1559
    invoke-static {v8, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v7

    .line 1560
    :goto_1
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    move v11, v6

    goto :goto_2

    :cond_4
    move v11, v7

    :goto_2
    if-eqz v11, :cond_5

    .line 1563
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASS_LAYER:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1565
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v12

    const-string v13, "***"

    if-eqz v12, :cond_6

    if-nez v9, :cond_6

    if-nez v10, :cond_6

    if-nez v11, :cond_6

    move-object v0, v13

    goto :goto_3

    .line 1568
    :cond_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v9, :cond_7

    .line 1570
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_8

    .line 1572
    const-string v5, "group-name"

    invoke-static {v8, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    move-object v0, v5

    .line 1582
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v5

    .line 1585
    iget-object v8, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    .line 1582
    const-string v9, "isGroup"

    if-eqz v5, :cond_9

    .line 1583
    iget-object v5, v8, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_4

    .line 1585
    :cond_9
    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1586
    iget-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v5, v5, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_4

    :cond_a
    move v5, v7

    .line 1591
    :goto_4
    invoke-virtual {v1, v4, v5}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->isOnlinePersonalId(Ljava/lang/String;Z)Z

    move-result v8

    .line 1592
    const-string v9, "notyet"

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v4}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->isTeacherForDcUserId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1593
    invoke-interface {v2, v0, v9, v8}, Lcom/metamoji/nt/INtEditor;->showPersonalModeInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1597
    :cond_b
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1598
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v1, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v3, "isTeacherPersonalLayer"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1601
    invoke-interface {v2, v7}, Lcom/metamoji/nt/INtEditor;->prevNextButtonEnabled(Z)V

    goto :goto_5

    .line 1603
    :cond_c
    invoke-interface {v2, v6}, Lcom/metamoji/nt/INtEditor;->prevNextButtonEnabled(Z)V

    move v6, v8

    :goto_5
    move v8, v6

    goto :goto_6

    :cond_d
    if-nez v5, :cond_e

    .line 1606
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1607
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$9;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-static {v1, v4}, Lcom/metamoji/forSchool/ScSchoolManager;->-$$Nest$mgetCollaboUserInfo(Lcom/metamoji/forSchool/ScSchoolManager;Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1608
    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 1609
    iget-object v9, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    .line 1613
    :cond_e
    :goto_6
    invoke-interface {v2, v0, v9, v8}, Lcom/metamoji/nt/INtEditor;->showPersonalModeInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_f
    :goto_7
    return-void
.end method
