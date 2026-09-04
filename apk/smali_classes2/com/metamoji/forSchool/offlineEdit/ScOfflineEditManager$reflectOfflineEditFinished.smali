.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "reflectOfflineEditFinished"
.end annotation


# instance fields
.field private mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

.field private mBgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mBgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    .line 254
    iput-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mBgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 278
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mBgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->getResult()I

    move-result p1

    if-nez p1, :cond_2

    .line 284
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_3
    return-void
.end method

.method public setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mAfterAction:Lcom/metamoji/ns/INsCollaboAction;

    return-void
.end method

.method public setBgTask(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->mBgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    return-void
.end method
