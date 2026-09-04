.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

.field final synthetic val$resIdPair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;Landroid/util/Pair;)V
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

    .line 409
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->val$resIdPair:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$imgView:Lcom/metamoji/ui/cabinet/TreeIconView;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->val$resIdPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/TreeIconView;->setImageResource(I)V

    .line 413
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$selectedImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->val$resIdPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$imgView:Lcom/metamoji/ui/cabinet/TreeIconView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/TreeIconView;->setAlpha(F)V

    .line 416
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;->this$2:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$selectedImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method
