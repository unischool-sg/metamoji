.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;
.super Lcom/metamoji/ui/cabinet/SimpleDragListener;
.source "SelectOrganizationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDrag(I)I
    .locals 0

    return p1
.end method

.method public onStopDrag(IIII)Z
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getCount()I

    move-result v0

    if-gez p2, :cond_1

    if-gez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v0, -0x1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    .line 665
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    .line 666
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->insert(Ljava/lang/Object;I)V

    .line 667
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 670
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_list(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->invalidateViews()V

    .line 673
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fput_moved(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Z)V

    .line 675
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1
.end method
