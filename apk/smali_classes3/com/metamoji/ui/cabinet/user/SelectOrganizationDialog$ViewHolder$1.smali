.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

.field final synthetic val$this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V
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

    .line 528
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;->val$this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 531
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_item:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    invoke-static {p1, v0, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$mselectItem(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;Z)V

    return-void
.end method
