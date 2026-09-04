.class Lcom/metamoji/noteanytime/MainActivity$65;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->driveDisplaySettings(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$mutableGroupId:Lcom/metamoji/cm/mutable/Mutable;

.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/CmTaskManager;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4512
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$65;->val$mutableGroupId:Lcom/metamoji/cm/mutable/Mutable;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$65;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$65;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4515
    new-instance v0, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v0}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 4516
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$65;->val$mutableGroupId:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 4518
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$65;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$65$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$65$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$65;Lcom/metamoji/cm/mutable/Mutable;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 4536
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$65;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
