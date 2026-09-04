.class final Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001fJ\u0018\u0010\u0015\u001a\u00020%2\u0006\u0010\'\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0002J\u0006\u0010(\u001a\u00020%R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;",
        "",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/view/View;)V",
        "orgIdView",
        "Landroid/widget/TextView;",
        "getOrgIdView",
        "()Landroid/widget/TextView;",
        "urlView",
        "getUrlView",
        "checkbox",
        "Landroid/widget/ToggleButton;",
        "getCheckbox",
        "()Landroid/widget/ToggleButton;",
        "margin",
        "getMargin",
        "()Landroid/view/View;",
        "margin2",
        "getMargin2",
        "showCheckbox",
        "",
        "getShowCheckbox",
        "()Z",
        "setShowCheckbox",
        "(Z)V",
        "deletable",
        "getDeletable",
        "setDeletable",
        "organizationItem",
        "Lcom/metamoji/li/dialog/OrganizationItem;",
        "getOrganizationItem",
        "()Lcom/metamoji/li/dialog/OrganizationItem;",
        "setOrganizationItem",
        "(Lcom/metamoji/li/dialog/OrganizationItem;)V",
        "bindView",
        "",
        "item",
        "show",
        "toggleCheckbox",
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
.field private final checkbox:Landroid/widget/ToggleButton;

.field private deletable:Z

.field private final margin:Landroid/view/View;

.field private final margin2:Landroid/view/View;

.field private final orgIdView:Landroid/widget/TextView;

.field public organizationItem:Lcom/metamoji/li/dialog/OrganizationItem;

.field private showCheckbox:Z

.field final synthetic this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

.field private final urlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->orgIdView:Landroid/widget/TextView;

    .line 495
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_url:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->urlView:Landroid/widget/TextView;

    .line 496
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    .line 497
    sget v1, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_margin:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin:Landroid/view/View;

    .line 498
    sget v1, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_margin2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin2:Landroid/view/View;

    const/4 p2, 0x1

    .line 500
    iput-boolean p2, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->deletable:Z

    .line 532
    new-instance p2, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;)V

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 533
    new-instance p1, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->getOrganizationItem()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$selectItem(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/OrganizationItem;Z)V

    return-void
.end method

.method static final _init_$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final showCheckbox(ZZ)V
    .locals 4

    .line 513
    iget-boolean v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->showCheckbox:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->deletable:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 514
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 516
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 519
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin2:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :goto_4
    iput-boolean p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->showCheckbox:Z

    .line 523
    iput-boolean p2, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->deletable:Z

    return-void
.end method


# virtual methods
.method public final bindView(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->setOrganizationItem(Lcom/metamoji/li/dialog/OrganizationItem;)V

    .line 505
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->orgIdView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->getOrganizationItem()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$getDisplayText(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/OrganizationItem;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->getOrganizationItem()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/dialog/OrganizationItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->urlView:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$getViewModel$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->isEditing()Z

    move-result v0

    iget-object v3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v3, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$isDeletable(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/OrganizationItem;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->showCheckbox(ZZ)V

    .line 509
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$getViewModel$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->isChecked(Lcom/metamoji/li/dialog/OrganizationItem;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public final getCheckbox()Landroid/widget/ToggleButton;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public final getDeletable()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->deletable:Z

    return v0
.end method

.method public final getMargin()Landroid/view/View;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin:Landroid/view/View;

    return-object v0
.end method

.method public final getMargin2()Landroid/view/View;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->margin2:Landroid/view/View;

    return-object v0
.end method

.method public final getOrgIdView()Landroid/widget/TextView;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->orgIdView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getOrganizationItem()Lcom/metamoji/li/dialog/OrganizationItem;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->organizationItem:Lcom/metamoji/li/dialog/OrganizationItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "organizationItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getShowCheckbox()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->showCheckbox:Z

    return v0
.end method

.method public final getUrlView()Landroid/widget/TextView;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->urlView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setDeletable(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->deletable:Z

    return-void
.end method

.method public final setOrganizationItem(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->organizationItem:Lcom/metamoji/li/dialog/OrganizationItem;

    return-void
.end method

.method public final setShowCheckbox(Z)V
    .locals 0

    .line 499
    iput-boolean p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->showCheckbox:Z

    return-void
.end method

.method public final toggleCheckbox()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
