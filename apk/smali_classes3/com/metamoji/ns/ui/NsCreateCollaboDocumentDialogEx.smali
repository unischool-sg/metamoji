.class public Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCreateCollaboDocumentDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;,
        Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$LoginNameComparator;,
        Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$UserNameComparator;,
        Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$NumClassNumberComparator;,
        Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$StrClassNumberComparator;,
        Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;
    }
.end annotation


# static fields
.field public static final DRIVE_DATA_KEY_DRIVE_ID:Ljava/lang/String; = "driveId"

.field public static final DRIVE_DATA_KEY_TAGS:Ljava/lang/String; = "tagList"

.field static final TD_FOLDER_ROOT:Ljava/lang/String; = " / "

.field static final TD_PATH_SEPARATOR:Ljava/lang/String; = " / "


# instance fields
.field public m_action:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;

.field m_appendBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_cancelAction:Lcom/metamoji/ns/INsCollaboAction;

.field m_className:Ljava/lang/String;

.field m_commandUseSettingBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_date:Ljava/util/Date;

.field m_deadlineSettingBtn:Lcom/metamoji/ui/common/UiButton;

.field m_distributeBoxLabel:Landroid/widget/TextView;

.field public m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

.field m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

.field m_distributeSharedDrivesTable:Landroid/widget/ListView;

.field public m_docIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_email:Ljava/lang/String;

.field m_endDate:Ljava/util/Date;

.field m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field m_formalPresenterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_formalSpeakerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_formalVisitorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m_hasDate:Z

.field public m_isDoneProcessing:Z

.field public m_loginName:Ljava/lang/String;

.field m_memberBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_nickName:Ljava/lang/String;

.field m_ownerId:Ljava/lang/String;

.field m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field m_removeBtn:Lcom/metamoji/ui/common/UiButton;

.field m_roomSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m_roomType:Ljava/lang/String;

.field m_saveTitle:Ljava/lang/String;

.field m_scoreEnable:Z

.field public m_secureRoomPassword:Ljava/lang/String;

.field public m_shareTemplateDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_srcAppName:Ljava/lang/String;

.field m_srcClass:Ljava/lang/String;

.field m_srcPackage:Ljava/lang/String;

.field m_startDate:Ljava/util/Date;

.field public m_submitByStudent:Z

.field public m_title:Ljava/lang/String;

.field m_titleEdit:Lcom/metamoji/ui/common/UiEditText;

.field public m_userId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maddMemberFromSharedDriveForSchool(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromSharedDriveForSchool(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAppendButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleAppendButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCommandUseSettingButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleCommandUseSettingButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeadlineSettingButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleDeadlineSettingButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMemberSettingButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleMemberSettingButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRemoveButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleRemoveButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDeadlineBtnLabel(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateDeadlineBtnLabel()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 312
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_saveTitle:Ljava/lang/String;

    const/4 v1, 0x0

    .line 274
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    .line 287
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 298
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    .line 300
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_docIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_saveTitle:Ljava/lang/String;

    const/4 v1, 0x0

    .line 274
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    .line 287
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 298
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    .line 300
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_docIds:Ljava/util/List;

    .line 318
    const-string v2, "casual"

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomType:Ljava/lang/String;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalSpeakerArray:Ljava/util/ArrayList;

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    .line 323
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 332
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_SHAREDDRIVE:Lcom/metamoji/nt/NtCommand;

    iput-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

    if-eqz v2, :cond_4

    .line 336
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 338
    const-string/jumbo v3, "srcInfo"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 341
    const-string v3, "package"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcPackage:Ljava/lang/String;

    .line 342
    const-string v3, "class"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 344
    :cond_0
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcPackage:Ljava/lang/String;

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcPackage:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 347
    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcAppName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 350
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcAppName:Ljava/lang/String;

    .line 353
    :cond_3
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_CUSTOMAPP:Lcom/metamoji/nt/NtCommand;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

    .line 360
    :cond_4
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_className:Ljava/lang/String;

    .line 361
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_groupList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 363
    const-string v2, "className"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_className:Ljava/lang/String;

    .line 364
    const-string v2, "groupDicList"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 366
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_groupList:Ljava/util/List;

    .line 368
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getMemberDicListFromGroupList(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 369
    const-string/jumbo v2, "teacher"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 370
    const-string v3, "member"

    invoke-static {p1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 372
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;)V

    .line 374
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;)V

    .line 378
    :cond_5
    new-instance p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    .line 381
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_scoreEnable:Z

    .line 384
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 385
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 386
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_startDate:Ljava/util/Date;

    .line 387
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endDate:Ljava/util/Date;

    .line 390
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_hasDate:Z

    .line 391
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->clearHoursDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_date:Ljava/util/Date;

    return-void
.end method

.method private addMemberFromSharedDriveForSchool(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 936
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 937
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 938
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 939
    iget-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_groupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 940
    check-cast v9, Ljava/util/Map;

    .line 941
    const-string/jumbo v11, "user-list"

    invoke-static {v9, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_1

    .line 943
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 946
    :cond_1
    const-string v12, "group-id"

    invoke-static {v9, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 947
    const-string v12, "TEACHER"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v4, v11

    goto :goto_0

    .line 949
    :cond_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v5, v11

    goto :goto_0

    .line 954
    :cond_3
    iget-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 955
    iget-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalSpeakerArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 956
    iget-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v4, :cond_4

    .line 958
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v9, v4

    if-nez v5, :cond_5

    .line 961
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    move-object v11, v5

    .line 965
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    const-string v12, "login-name"

    const-string v13, "class-number"

    const-string/jumbo v14, "user-name"

    const-string/jumbo v15, "user-id"

    if-eqz v2, :cond_6

    .line 968
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 969
    iget-object v4, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v4, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_nickName:Ljava/lang/String;

    invoke-interface {v2, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-interface {v2, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v4, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_loginName:Ljava/lang/String;

    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    .line 980
    invoke-virtual {v2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v2

    .line 981
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->getDriveMemberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 983
    const-string v2, "addMemberFromSharedDrive."

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_7

    return-void

    .line 989
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 990
    const-string/jumbo v2, "status"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_8

    goto :goto_2

    .line 996
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_9

    .line 997
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1001
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    if-eq v2, v4, :cond_a

    move-object/from16 v16, v10

    goto/16 :goto_5

    .line 1006
    :cond_a
    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1007
    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1008
    const-string v5, "classNumber"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1009
    const-string v4, "loginName"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v16, v10

    .line 1011
    const-string v10, "isTeacher"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1013
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_c

    .line 1018
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v10

    if-nez v10, :cond_11

    .line 1020
    const-string/jumbo v10, "type"

    invoke-static {v0, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x1

    if-ne v10, v0, :cond_11

    .line 1022
    iput-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_ownerId:Ljava/lang/String;

    .line 1023
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1024
    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    invoke-interface {v0, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1035
    :cond_c
    iget-boolean v0, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5

    .line 1039
    :cond_d
    invoke-direct {v1, v2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->isAlreadyAddedUserId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1041
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    .line 1047
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_11

    .line 1061
    iget-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_10

    .line 1062
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    .line 1065
    :cond_e
    invoke-static {v4}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1067
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1069
    :cond_f
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1063
    :cond_10
    :goto_4
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    move-object/from16 v10, v16

    goto/16 :goto_2

    .line 1084
    :cond_12
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1085
    const-string v0, "MMJAppMonitorSortOrder"

    const-string/jumbo v2, "userid"

    invoke-static {v0, v2}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1091
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$LoginNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1092
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$LoginNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 1094
    :cond_13
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$UserNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$UserNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1095
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$UserNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$UserNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1097
    :goto_6
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$NumClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1098
    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$StrClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1100
    invoke-interface {v11, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1101
    invoke-interface {v11, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1102
    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static createAbsPath(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    const-string v0, " / "

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private handleAppendButtonTap()V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    .line 776
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->notifyDataSetChanged()V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->checkMaxDistributeSharedDrives(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 784
    :cond_1
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SUBMISSIONBOXSELECTDLG_TITLE:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_SharedDriveSelectDlg_Title:I

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote;-><init>(ILjava/util/ArrayList;)V

    .line 785
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    .line 829
    invoke-direct {p0, v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->showDistributeSharedDriveSelectDialog(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    return-void
.end method

.method private handleCommandUseSettingButtonTap()V
    .locals 3

    .line 710
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;-><init>()V

    const/4 v1, 0x0

    .line 711
    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeMode:Z

    .line 712
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    .line 713
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoomPassword:Ljava/lang/String;

    .line 714
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoom:Z

    .line 715
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_scoreEnable:Z

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    .line 716
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_title:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_title:Ljava/lang/String;

    .line 717
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_hasDate:Z

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    .line 718
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_hasDate:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_date:Ljava/util/Date;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/metamoji/ns/NsShareViewCommand;->roundMinutesDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    .line 719
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$10;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 734
    const-string v1, "NsCollaboCommandUseSettingDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleDeadlineSettingButtonTap()V
    .locals 2

    .line 749
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;-><init>()V

    const/4 v1, 0x0

    .line 750
    iput-boolean v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    .line 751
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 752
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 753
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_startDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    .line 754
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    .line 755
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$11;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 770
    const-string v1, "ScDeadlineSetting"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleMemberSettingButtonTap()V
    .locals 2

    .line 692
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;-><init>()V

    .line 693
    iput-object p0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    .line 694
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomType:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    .line 695
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    .line 696
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerNickName:Ljava/lang/String;

    .line 697
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_loginName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerLoginName:Ljava/lang/String;

    .line 698
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    .line 699
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalSpeakerArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    .line 700
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    .line 701
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myUserId:Ljava/lang/String;

    .line 702
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_email:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myAddress:Ljava/lang/String;

    .line 703
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_className:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_prevClassName:Ljava/lang/String;

    .line 704
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_groupList:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    .line 705
    const-string v1, "NsCollaboMemberSettingsDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleRemoveButtonTap()V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    iget-boolean v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    .line 835
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private isAlreadyAddedUserId(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 1155
    new-array v2, v1, [Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalSpeakerArray:Ljava/util/ArrayList;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    aput-object v5, v2, v3

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v2, v3

    .line 1156
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1157
    const-string/jumbo v7, "userId"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1158
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private showDistributeSharedDriveSelectDialog(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setReconstructDialogFlag(Z)V

    .line 865
    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 866
    sget-object p2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    iput-object p2, p1, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const/4 p2, 0x0

    .line 871
    invoke-virtual {p1, p2, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setInitDriveId(Ljava/lang/String;Ljava/util/List;)V

    .line 872
    const-string p2, "ScSelectNote"

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private updateDeadlineBtnLabel()V
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_deadlineSettingBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v1, v2, :cond_0

    .line 742
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTING_UNUSE:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTING_USE:I

    .line 741
    :goto_0
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addDistributeSharedDriveData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->add(Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 676
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 677
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    return-void
.end method

.method addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    .line 1286
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1287
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1288
    const-string v2, "dcUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1289
    const-string/jumbo v1, "userId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1290
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_userId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1293
    :cond_2
    const-string v2, "mailUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1294
    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1295
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_email:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1301
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method getDistributeCustomAppLabel()Ljava/lang/String;
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Distribute_Note_By_CustomApp:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcAppName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDriveMemberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1111
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;-><init>()V

    .line 1112
    iput-object p1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->driveId:Ljava/lang/String;

    .line 1115
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtFeature;->GetDetailedDriveMemberList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 1119
    iput-boolean v1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isClassMember:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1122
    iput-boolean p1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isGet:Z

    .line 1127
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz p1, :cond_2

    .line 1128
    iget p2, p1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-eqz p2, :cond_3

    .line 1129
    :cond_2
    iput-boolean v1, v0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->isGet:Z

    .line 1131
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    :cond_3
    if-eqz p1, :cond_4

    .line 1135
    iget p2, p1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-nez p2, :cond_4

    .line 1136
    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->list:Ljava/util/List;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method handleDeleteItem(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->remove(Ljava/lang/Object;)V

    .line 842
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    iget-boolean p1, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    if-eqz p1, :cond_0

    .line 843
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    iput-boolean v0, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    .line 844
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->notifyDataSetChanged()V

    .line 848
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 849
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 850
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 851
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$13;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$13;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateDistributeLabel()V

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateGroupSettingButton()V

    .line 860
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateAppendAndRemoveButton()V

    return-void
.end method

.method isDisplayPlaceholder()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 1266
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    .line 1268
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_cancelAction:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1269
    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->mV4Compatible:Z

    .line 399
    iget v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->mViewId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 405
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->setModal(Z)V

    .line 408
    iput-boolean v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->mDone:Z

    .line 410
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_create_document:I

    iput v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->mViewId:I

    .line 411
    iget-boolean v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MENU_SUBMIT_BY_STUDENT:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/metamoji/noteanytime/R$string;->ShareBar_Guidance_Btn_Start:I

    :goto_1
    iput v2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->mTitleId:I

    .line 413
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez v1, :cond_c

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 424
    sget p2, Lcom/metamoji/noteanytime/R$id;->titleEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_titleEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 425
    new-instance p3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$1;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 438
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_docIds:Ljava/util/List;

    const/16 p3, 0x8

    if-eqz p2, :cond_3

    .line 439
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance1Label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 440
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_titleEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setVisibility(I)V

    .line 446
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance2Label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeBoxLabel:Landroid/widget/TextView;

    .line 448
    sget p2, Lcom/metamoji/noteanytime/R$id;->removeButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_removeBtn:Lcom/metamoji/ui/common/UiButton;

    .line 449
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$2;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    sget p2, Lcom/metamoji/noteanytime/R$id;->appendButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_appendBtn:Lcom/metamoji/ui/common/UiButton;

    .line 456
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$3;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    sget p2, Lcom/metamoji/noteanytime/R$id;->distributeSharedDrivesTable:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrivesTable:Landroid/widget/ListView;

    .line 464
    sget p2, Lcom/metamoji/noteanytime/R$id;->emptyTextView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 465
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 466
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$4;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrivesTable:Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 473
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrivesTable:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->notifyDataSetChanged()V

    .line 479
    sget p2, Lcom/metamoji/noteanytime/R$id;->memberBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_memberBtn:Lcom/metamoji/ui/common/UiButton;

    .line 480
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$5;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    sget p2, Lcom/metamoji/noteanytime/R$id;->commandUseSettingBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_commandUseSettingBtn:Lcom/metamoji/ui/common/UiButton;

    .line 490
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$6;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    sget p2, Lcom/metamoji/noteanytime/R$id;->deadlineSettingBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_deadlineSettingBtn:Lcom/metamoji/ui/common/UiButton;

    .line 499
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$7;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    sget p2, Lcom/metamoji/noteanytime/R$id;->startBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 510
    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$8;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    if-eqz v1, :cond_4

    .line 517
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CREATESHARENOTEDLG_BTN_SUBMIT:I

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    .line 520
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance3Label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 522
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 523
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_memberBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 526
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_docIds:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 527
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_memberBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 531
    :cond_5
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_commandUseSettingBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 532
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_deadlineSettingBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_2

    .line 534
    :cond_6
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_memberBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 537
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_commandUseSettingBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 538
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_deadlineSettingBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 542
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_saveTitle:Ljava/lang/String;

    .line 547
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_titleEdit:Lcom/metamoji/ui/common/UiEditText;

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    .line 544
    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_saveTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 547
    :cond_8
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_title:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    if-eqz p2, :cond_a

    .line 551
    const-string/jumbo p3, "roomType"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomType:Ljava/lang/String;

    .line 552
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    const-string v2, "presenterArray"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;)V

    .line 553
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalSpeakerArray:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    const-string/jumbo v2, "speakerArray"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;)V

    .line 554
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    const-string/jumbo v2, "visitorArray"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;)V

    .line 558
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    const-string/jumbo p3, "securePassword"

    invoke-static {p2, p3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cm/Blob;

    if-eqz p2, :cond_9

    .line 561
    new-instance p3, Lcom/metamoji/cm/PBE;

    const-string v2, "HmK9ef%F73&q*xYJ+sfFiw8>BvkP!2QIF#ls=?^|4LmRtCei8"

    invoke-direct {p3, v2}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    .line 563
    :try_start_0
    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/metamoji/cm/PBE;->decryptString([B)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 565
    const-string p3, "Exception occured in MMJNsCreateCollaboDocumentViewControllerEx securePassword decrypt"

    invoke-static {p2, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p2, v1

    :goto_3
    if-eqz p2, :cond_9

    .line 569
    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    .line 575
    :cond_9
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    const-string/jumbo p3, "roomSettingArray"

    invoke-static {p2, p3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 576
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_shareTemplateDic:Ljava/util/Map;

    .line 580
    :cond_a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-nez p2, :cond_b

    .line 581
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    const-string p3, "allowToOpePage"

    invoke-static {p2, p3, v0}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 585
    :cond_b
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    const-string p3, "allowToSaveNote"

    invoke-static {p2, p3, v0}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 590
    const-string p3, "allowToEditOths"

    invoke-static {p2, p3, v3}, Lcom/metamoji/ns/NsCollaboManager;->setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    .line 593
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_SHAREDDRIVE:Lcom/metamoji/nt/NtCommand;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

    .line 596
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateDistributeLabel()V

    .line 597
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateAppendAndRemoveButton()V

    .line 600
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateDeadlineBtnLabel()V

    :cond_c
    :goto_5
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 1171
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1174
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    .line 1177
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_docIds:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1180
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_titleEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1186
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_title:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidDocumentTitleError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1188
    invoke-static {p1, v0, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1189
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void

    .line 1182
    :cond_2
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Error_No_Title:I

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 1183
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void

    .line 1196
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    invoke-virtual {p1, v1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_titleEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_saveTitle:Ljava/lang/String;

    .line 613
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method updateAppendAndRemoveButton()V
    .locals 4

    .line 643
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->isDisplayPlaceholder()Z

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_removeBtn:Lcom/metamoji/ui/common/UiButton;

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_appendBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 647
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 648
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    .line 651
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_appendBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_1

    .line 649
    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    .line 651
    :cond_1
    invoke-virtual {v3, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method

.method updateDistributeLabel()V
    .locals 4

    const/4 v0, 0x0

    .line 631
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->isDisplayPlaceholder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 635
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SUBMISSION_BOX:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISTRIBUTE_BOX:I

    :goto_0
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeBoxLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateGroupSettingButton()V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_memberBtn:Lcom/metamoji/ui/common/UiButton;

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 658
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void

    .line 660
    :cond_0
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method
