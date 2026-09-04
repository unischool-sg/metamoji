.class final Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;
.super Ljava/lang/Object;
.source "SelectOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;
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
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;",
        "",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/view/View;)V",
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
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "getOrganizationItem",
        "()Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "setOrganizationItem",
        "(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V",
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

.field public organizationItem:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

.field private showCheckbox:Z

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

.field private final urlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->orgIdView:Landroid/widget/TextView;

    .line 386
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_url:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->urlView:Landroid/widget/TextView;

    .line 387
    sget v0, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    .line 388
    sget v1, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_margin:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin:Landroid/view/View;

    .line 389
    sget v1, Lcom/metamoji/noteanytime/R$id;->organizationlist_item_margin2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin2:Landroid/view/View;

    const/4 p2, 0x1

    .line 391
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->deletable:Z

    .line 423
    new-instance p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;)V

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 424
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->getOrganizationItem()Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$selectItem(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/OrganizationItem;Z)V

    return-void
.end method

.method static final _init_$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final showCheckbox(ZZ)V
    .locals 4

    .line 404
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->showCheckbox:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->deletable:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 405
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 407
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 410
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin2:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :goto_4
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->showCheckbox:Z

    .line 414
    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->deletable:Z

    return-void
.end method


# virtual methods
.method public final bindView(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->setOrganizationItem(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->orgIdView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->getOrganizationItem()Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$getDisplayText(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->getOrganizationItem()Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->urlView:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$get_editing$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Z

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-static {v1, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$isDeletable(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->showCheckbox(ZZ)V

    .line 400
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$get_checked$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public final getCheckbox()Landroid/widget/ToggleButton;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public final getDeletable()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->deletable:Z

    return v0
.end method

.method public final getMargin()Landroid/view/View;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin:Landroid/view/View;

    return-object v0
.end method

.method public final getMargin2()Landroid/view/View;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->margin2:Landroid/view/View;

    return-object v0
.end method

.method public final getOrgIdView()Landroid/widget/TextView;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->orgIdView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getOrganizationItem()Lcom/metamoji/ui/cabinet/user/OrganizationItem;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->organizationItem:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

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

    .line 390
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->showCheckbox:Z

    return v0
.end method

.method public final getUrlView()Landroid/widget/TextView;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->urlView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setDeletable(Z)V
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->deletable:Z

    return-void
.end method

.method public final setOrganizationItem(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->organizationItem:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    return-void
.end method

.method public final setShowCheckbox(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->showCheckbox:Z

    return-void
.end method

.method public final toggleCheckbox()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->checkbox:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
