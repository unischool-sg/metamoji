.class public final Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectSchoolDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchoolListAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u001b\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;",
        "Landroid/widget/BaseAdapter;",
        "context",
        "Landroid/content/Context;",
        "viewModel",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;",
        "<init>",
        "(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V",
        "getContext",
        "()Landroid/content/Context;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getInflater",
        "()Landroid/view/LayoutInflater;",
        "setInflater",
        "(Landroid/view/LayoutInflater;)V",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "getItem",
        "",
        "getItemId",
        "",
        "getCount",
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
.field private final context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private final viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "from(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 129
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/metamoji/noteanytime/R$layout;->school_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 130
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.metamoji.cs.dc.user.CsLoginInfo"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    .line 131
    sget p3, Lcom/metamoji/noteanytime/R$id;->school_id:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->coLoginId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget p3, Lcom/metamoji/noteanytime/R$id;->school_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->companyName:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final setInflater(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$SchoolListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method
