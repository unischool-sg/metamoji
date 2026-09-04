.class final Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OrganizationItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\"\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "context",
        "Landroid/content/Context;",
        "array",
        "",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/content/Context;Ljava/util/List;)V",
        "isEnabled",
        "",
        "index",
        "",
        "createView",
        "Landroid/view/View;",
        "parent",
        "Landroid/view/ViewGroup;",
        "getView",
        "convertView",
        "asList",
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
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 438
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    .line 439
    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_organizationlist:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    .line 440
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    const-string v0, "apply(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final asList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$get_adapter$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->getCount()I

    move-result v0

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 454
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->access$get_adapter$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    :cond_1
    invoke-virtual {v6, v5}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    if-nez v6, :cond_2

    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 452
    :cond_3
    check-cast v3, Ljava/util/List;

    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 445
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.metamoji.ui.cabinet.user.SelectOrganizationDialogEx.ViewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    if-nez p1, :cond_1

    sget-object p1, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->Companion:Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;->getEmpty()Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object p1

    :cond_1
    invoke-virtual {p3, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->bindView(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
