.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$1;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$1;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$1;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mopenFolderTree(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    return-void
.end method
