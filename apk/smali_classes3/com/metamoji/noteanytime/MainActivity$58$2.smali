.class Lcom/metamoji/noteanytime/MainActivity$58$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$58;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$58;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4163
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$58$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$58;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4166
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$58$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$58;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$58;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$58$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$58;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$58;->val$groupId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$58$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$58;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$58;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DriveMemberDialog"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
