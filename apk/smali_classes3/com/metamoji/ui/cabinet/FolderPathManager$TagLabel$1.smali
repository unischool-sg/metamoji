.class Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;
.super Ljava/lang/Object;
.source "FolderPathManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;Landroid/content/Context;Lcom/metamoji/ui/cabinet/CabinetTreeItem;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;

.field final synthetic val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic val$this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;Lcom/metamoji/ui/cabinet/FolderPathManager;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->val$this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderClickListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 56
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;->val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
