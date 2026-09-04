.class Lcom/metamoji/noteanytime/MainActivity$59$1$1$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$59$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/noteanytime/MainActivity$59$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$59$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4197
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$59$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$59$1$1;

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

    .line 4197
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$59$1$1$1;->call()Ljava/lang/Void;

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

    .line 4201
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$59$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$59$1$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$59$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$59$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$59$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$59;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$59;->val$activity:Landroidx/fragment/app/FragmentActivity;

    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$59$1$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$59$1$1;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$59$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$59$1;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$59$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$59;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$59;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smupdateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    const/4 v0, 0x0

    return-object v0
.end method
