.class Lcom/metamoji/noteanytime/MainActivity$65$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$65;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$65;

.field final synthetic val$mutableDrives:Lcom/metamoji/cm/mutable/Mutable;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$65;Lcom/metamoji/cm/mutable/Mutable;)V
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

    .line 4518
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$65$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$65;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$65$1;->val$mutableDrives:Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4518
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$65$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4521
    new-instance v0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$65$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$65;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$65;->val$mutableGroupId:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$65$1;->val$mutableDrives:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 4522
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$65$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$65$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$65$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 4530
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$65$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$65;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$65;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 4531
    const-string v2, "ShareDriveDisplaySettings"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
