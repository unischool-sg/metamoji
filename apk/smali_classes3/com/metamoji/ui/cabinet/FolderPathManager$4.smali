.class Lcom/metamoji/ui/cabinet/FolderPathManager$4;
.super Ljava/lang/Object;
.source "FolderPathManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderPathManager;->updateView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderPathManager;Ljava/lang/String;)V
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

    .line 420
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4;->val$driveId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive:I

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4;->val$driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive:I

    goto :goto_0

    .line 431
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive:I

    .line 434
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager$4;I)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
