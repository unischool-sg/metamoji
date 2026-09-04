.class public final Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;
.super Lcom/metamoji/ui/cabinet/SimpleDragListener;
.source "SelectOrganizationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DragListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;",
        "Lcom/metamoji/ui/cabinet/SimpleDragListener;",
        "<init>",
        "(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V",
        "onStartDrag",
        "",
        "position",
        "onStopDrag",
        "",
        "positionFrom",
        "positionTo_",
        "x",
        "y",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 571
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDrag(I)I
    .locals 0

    return p1
.end method

.method public onStopDrag(IIII)Z
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    const-string v1, "_adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->getCount()I

    move-result v0

    if-gez p2, :cond_2

    if-gez p4, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v0, -0x1

    :cond_2
    :goto_0
    if-lt p2, v0, :cond_3

    add-int/lit8 p2, v0, -0x1

    .line 591
    :cond_3
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/dialog/OrganizationItem;

    .line 592
    iget-object v3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v3, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    .line 593
    iget-object v3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    invoke-virtual {v3, v0, p2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->insert(Ljava/lang/Object;I)V

    .line 594
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 597
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$getListView$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "listView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->invalidateViews()V

    .line 600
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$getViewModel$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    iget-object v3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v2, v3

    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->asList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->updateList(Ljava/util/List;)V

    .line 601
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1
.end method
