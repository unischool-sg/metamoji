.class Lcom/metamoji/ns/NsCollaboCommand$8;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createRoomSingleNoteToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;ZLjava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentDocId:Ljava/lang/String;

.field final synthetic val$currentDriveId:Ljava/lang/String;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$deleteCurrentDoc:Z

.field final synthetic val$distributeSharedDrives:Ljava/util/List;

.field final synthetic val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$endDate:Ljava/util/Date;

.field final synthetic val$endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field final synthetic val$finalRoomSettingList:Ljava/util/List;

.field final synthetic val$prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field final synthetic val$scoreEnable:Z

.field final synthetic val$startDate:Ljava/util/Date;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;ZLcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 578
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$deleteCurrentDoc:Z

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDocId:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$distributeSharedDrives:Ljava/util/List;

    iput-object p7, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$date:Ljava/util/Date;

    iput-object p9, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$finalRoomSettingList:Ljava/util/List;

    iput-boolean p10, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$scoreEnable:Z

    iput-object p11, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p12, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p13, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$startDate:Ljava/util/Date;

    iput-object p14, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$endDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocumentCompleted(ZLjava/lang/Throwable;)V
    .locals 4

    .line 582
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;

    new-instance p2, Lcom/metamoji/ns/NsCollaboCommand$8$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/NsCollaboCommand$8$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$8;)V

    invoke-direct {p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 627
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$title:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->title:Ljava/lang/String;

    .line 628
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$date:Ljava/util/Date;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->date:Ljava/util/Date;

    .line 629
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->currentDriveId:Ljava/lang/String;

    .line 630
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDocId:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->currentDocId:Ljava/lang/String;

    .line 631
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$finalRoomSettingList:Ljava/util/List;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->roomSettingList:Ljava/util/List;

    .line 632
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$distributeSharedDrives:Ljava/util/List;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->distributeSharedDrives:Ljava/util/List;

    .line 633
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_secureRoomPassword:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->secureRoomPassword:Ljava/lang/String;

    .line 635
    iget-boolean p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$scoreEnable:Z

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$startDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$endDate:Ljava/util/Date;

    invoke-static {p2, v0, v1, v2, v3}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamDicWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p2

    .line 636
    iput-object p2, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    .line 638
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->doInBackground()V

    return-void
.end method
