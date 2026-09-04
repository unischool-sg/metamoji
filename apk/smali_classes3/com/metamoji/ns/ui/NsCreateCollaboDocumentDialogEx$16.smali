.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1196
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 1200
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v1

    .line 1215
    iget-object v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1201
    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-boolean v2, v2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_submitByStudent:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CREATESHARENOTEDLG_ERROR_NOT_SELECT_SUBMISSIONBOX:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Error_Not_Select_SharedDrive:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;

    invoke-direct {v2, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;)V

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1213
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-boolean v3, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void

    .line 1215
    :cond_1
    iget-object v1, v2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    .line 1220
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const-string v2, "formal"

    iput-object v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomType:Ljava/lang/String;

    .line 1223
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_action:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;

    if-eqz v1, :cond_3

    .line 1224
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v4, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_action:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v5, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomType:Ljava/lang/String;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v6, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_title:Ljava/lang/String;

    .line 1226
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-boolean v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_hasDate:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_date:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v7, v1

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v8, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalPresenterArray:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v9, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalSpeakerArray:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v10, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_formalVisitorArray:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v11, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    .line 1231
    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->toArrayList()Ljava/util/List;

    move-result-object v12

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v13, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_groupList:Ljava/util/List;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v14, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomSettingList:Ljava/util/List;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v15, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcPackage:Ljava/lang/String;

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_srcClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_ownerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-boolean v3, v3, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_scoreEnable:Z

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_startDate:Ljava/util/Date;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_endDate:Ljava/util/Date;

    move-object/from16 v22, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    .line 1224
    invoke-interface/range {v4 .. v22}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/nt/NtCommand;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V

    .line 1250
    :cond_3
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE_BY_CUSTOMAPP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1251
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeCommandId:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    const-string v3, "MMJCollaboPrevDistributeCommand"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 1253
    :cond_4
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_action:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$IAction;

    if-nez v1, :cond_5

    .line 1254
    iget-object v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    :cond_5
    return-void
.end method
