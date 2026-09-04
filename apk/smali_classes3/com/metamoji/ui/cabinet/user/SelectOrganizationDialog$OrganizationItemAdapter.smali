.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectOrganizationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrganizationItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;",
            ">;)V"
        }
    .end annotation

    .line 575
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    const/4 p1, 0x0

    .line 576
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 622
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    if-nez p2, :cond_0

    .line 627
    const-string p2, "layout_inflater"

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 628
    sget v0, Lcom/metamoji/noteanytime/R$layout;->item_organizationlist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 629
    new-instance p3, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p3, v0, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Landroid/view/View;)V

    .line 630
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;

    .line 635
    :goto_0
    invoke-virtual {p3, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->bindView(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
