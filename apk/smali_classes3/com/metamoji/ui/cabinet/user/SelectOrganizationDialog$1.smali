.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 212
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 217
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_editing(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_moved(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 224
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    .line 225
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 229
    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_editing(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$msetMode(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Z)V

    return-void
.end method
