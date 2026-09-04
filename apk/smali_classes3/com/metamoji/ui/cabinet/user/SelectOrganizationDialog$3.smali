.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 253
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 258
    check-cast p1, Landroid/widget/ListView;

    .line 259
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    .line 262
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_editing(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 265
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fput_organizationID(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fput_organizationName(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fput_serverURL(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_this:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_this:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->isDeletable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 278
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.metamoji.ui.cabinet.user.SelectOrganizationDialog$ViewHolder"

    .line 279
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 280
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->toggleCheckbox()V

    :cond_1
    return-void
.end method
