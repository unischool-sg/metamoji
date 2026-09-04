.class Lcom/metamoji/noteanytime/MainActivity$83;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->importShareSeedData(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$failure:Lcom/metamoji/sd/SdFailureBlock;

.field final synthetic val$success:Lcom/metamoji/sd/SdSuccessBlock;

.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6050
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$success:Lcom/metamoji/sd/SdSuccessBlock;

    iput-object p5, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 6054
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 6056
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$driveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 6057
    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v2

    .line 6058
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$docId:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/noteanytime/MainActivity$83$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/noteanytime/MainActivity$83$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$83;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveDocumentManager;)V

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 6066
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$83;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
