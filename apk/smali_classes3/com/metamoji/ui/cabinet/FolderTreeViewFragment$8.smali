.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

.field final synthetic val$selected:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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

    .line 1176
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;->val$selected:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;->val$selected:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
