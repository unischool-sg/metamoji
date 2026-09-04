.class Lcom/metamoji/ui/cabinet/FolderPathManager$3;
.super Ljava/lang/Object;
.source "FolderPathManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderPathManager;-><init>(Landroid/widget/HorizontalScrollView;Landroid/content/Context;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderPathManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$3;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 184
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$3;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderClickListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 186
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$3;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 191
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$3;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderClickListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$3;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
