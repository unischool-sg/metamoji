.class Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;
.super Ljava/lang/Object;
.source "CreateFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder$4$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;->this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;->this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CreateFolder$4$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->reloadAllView(Landroidx/fragment/app/FragmentActivity;)V

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;->this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CreateFolder$4$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;->this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CreateFolder$4$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-interface {v0}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderChanged()V

    .line 216
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;->this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CreateFolder$4$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$4$1$1;->this$2:Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/CreateFolder$4$1;->val$folderItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    :cond_0
    return-void
.end method
