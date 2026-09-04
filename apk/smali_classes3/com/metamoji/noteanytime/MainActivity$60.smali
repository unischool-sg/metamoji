.class Lcom/metamoji/noteanytime/MainActivity$60;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->checkDriveUsage(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4227
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$60;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$60;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4231
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$60;->val$driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    .line 4232
    new-instance v1, Lcom/metamoji/sd/cs/params/SdGetDrivePropertiesParams;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/params/SdGetDrivePropertiesParams;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;

    .line 4234
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$60$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$60$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$60;Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
