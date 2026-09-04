.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field _checkbox:Landroid/widget/ToggleButton;

.field _deletable:Z

.field _item:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

.field _margin:Landroid/view/View;

.field _margin2:Landroid/view/View;

.field _showCheckbox:Z

.field _txtvwID:Landroid/widget/TextView;

.field _txtvwURL:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_showCheckbox:Z

    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_deletable:Z

    .line 523
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_txtvwID:Landroid/widget/TextView;

    .line 524
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_url:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_txtvwURL:Landroid/widget/TextView;

    .line 525
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_margin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_margin:Landroid/view/View;

    .line 526
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_margin2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_margin2:Landroid/view/View;

    .line 527
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ToggleButton;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    .line 528
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$1;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 534
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder$2;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCheckbox(ZZ)V
    .locals 4

    .line 553
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_showCheckbox:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_deletable:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 554
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_margin:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 556
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_margin2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 559
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_margin2:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :goto_4
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_showCheckbox:Z

    .line 563
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_deletable:Z

    return-void
.end method


# virtual methods
.method public bindView(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;)V
    .locals 2

    .line 544
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_item:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    .line 545
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_txtvwID:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_item:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_txtvwURL:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_editing(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->isDeletable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->showCheckbox(ZZ)V

    .line 549
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_checked(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public toggleCheckbox()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
