.class Lcom/metamoji/noteanytime/MainActivity$62$1$1$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$62$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/noteanytime/MainActivity$62$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$62$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4380
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$62$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$62$1$1;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

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

    .line 4380
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$62$1$1$1;->call()Ljava/lang/Void;

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

    .line 4384
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 4385
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$62$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$62$1$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$62$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$62$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$62$1;->val$newDriveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->setTagId(Ljava/lang/String;)V

    .line 4386
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$62$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$62$1$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$62$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$62$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$62$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$62;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$62;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$62$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$62$1$1;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$62$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$62$1;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$62$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$62;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$62;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {v1, v0, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smupdateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    const/4 v0, 0x0

    return-object v0
.end method
