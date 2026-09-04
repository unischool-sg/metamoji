.class Lcom/metamoji/ui/library/item/LibraryViewDialog$12;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->doDownload(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field final synthetic val$fAppendPageIndex:I

.field final synthetic val$fUpdatePartIndex:I

.field final synthetic val$finalIsAdd:Z

.field final synthetic val$isExist:Z

.field final synthetic val$partDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;IZILjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 1840
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$fAppendPageIndex:I

    iput-boolean p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$isExist:Z

    iput p4, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$fUpdatePartIndex:I

    iput-object p5, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$partDic:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$finalIsAdd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1843
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$fAppendPageIndex:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1845
    iget-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$isExist:Z

    if-eqz v1, :cond_0

    .line 1847
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$fUpdatePartIndex:I

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$partDic:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->updatePartViewWithDic(ILjava/util/Map;)V

    goto :goto_0

    .line 1850
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$partDic:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ui/library/item/LibraryPageView;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;Z)V

    .line 1852
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->val$finalIsAdd:Z

    if-eqz v0, :cond_1

    .line 1853
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->savePageDataArray()V

    :cond_1
    return-void
.end method
