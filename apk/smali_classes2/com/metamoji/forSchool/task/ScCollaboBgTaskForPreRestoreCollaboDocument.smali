.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForPreRestoreCollaboDocument.java"


# instance fields
.field public docId:Ljava/lang/String;

.field public driveId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->driveId:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->docId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->docId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->stopSync(Z)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->docId:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;)V

    new-instance v3, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$2;

    invoke-direct {v3, p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;)V

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/noteanytime/MainActivity;->importShareSeedData(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->cancel()Z

    return-void
.end method
