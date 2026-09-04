.class public final Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "SelectOrganizationDialogEx.kt"

# interfaces
.implements Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;,
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$DragListener;,
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;,
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 32\u00020\u00012\u00020\u0002:\u00043456B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0012\u0010 \u001a\u00020\u00132\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0012\u0010#\u001a\u00020\u001f2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010&\u001a\u00020\u001f2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\"H\u0016J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u0006H\u0002J\u0008\u0010+\u001a\u00020\u001fH\u0002J\u0008\u0010,\u001a\u00020\u001fH\u0002J\u0018\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0006H\u0002J\u001c\u00100\u001a\u00020\u001f2\u0008\u00101\u001a\u0004\u0018\u00010\n2\u0008\u00102\u001a\u0004\u0018\u00010\nH\u0016R\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0008R\u0018\u0010\t\u001a\u00020\n*\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;",
        "Lcom/metamoji/ui/dialog/UiDialog;",
        "Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;",
        "<init>",
        "()V",
        "isDeletable",
        "",
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Z",
        "displayText",
        "",
        "getDisplayText",
        "(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Ljava/lang/String;",
        "viewModel",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;",
        "_editing",
        "_checked",
        "",
        "dlg",
        "Landroid/app/Dialog;",
        "_adapter",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;",
        "btnAdd",
        "Lcom/metamoji/ui/common/UiButton;",
        "btnRight",
        "Lcom/metamoji/ui/common/UiButtonHeader;",
        "btnLeft",
        "btnDelete",
        "listView",
        "Lcom/metamoji/ui/cabinet/user/OrganizationListView;",
        "initControls",
        "",
        "onCreateDialog",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDone",
        "view",
        "Landroid/view/View;",
        "onCancel",
        "onSaveInstanceState",
        "outState",
        "setMode",
        "editing",
        "updateButton",
        "deleteItems",
        "selectItem",
        "item",
        "selected",
        "onOrganizationListChanged",
        "organizationId",
        "serverUrl",
        "Companion",
        "ViewHolder",
        "OrganizationItemAdapter",
        "DragListener",
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


# static fields
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;


# instance fields
.field private _adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

.field private final _checked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;"
        }
    .end annotation
.end field

.field private _editing:Z

.field private btnAdd:Lcom/metamoji/ui/common/UiButton;

.field private btnDelete:Lcom/metamoji/ui/common/UiButton;

.field private btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

.field private btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

.field private dlg:Landroid/app/Dialog;

.field private listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

.field private viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getDisplayText(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->getDisplayText(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Lcom/metamoji/ui/cabinet/user/OrganizationListView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    return-object p0
.end method

.method public static final synthetic access$get_adapter$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    return-object p0
.end method

.method public static final synthetic access$get_checked$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Ljava/util/Set;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$get_editing$p(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_editing:Z

    return p0
.end method

.method public static final synthetic access$isDeletable(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Z
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->isDeletable(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$selectItem(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/OrganizationItem;Z)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->selectItem(Lcom/metamoji/ui/cabinet/user/OrganizationItem;Z)V

    return-void
.end method

.method private final deleteItems()V
    .locals 5

    .line 355
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "_adapter"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    .line 356
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez v4, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    invoke-virtual {v3, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 363
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 364
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    if-nez v0, :cond_3

    const-string v0, "btnDelete"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez v0, :cond_4

    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez v1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->asList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->updateList(Ljava/util/List;)V

    return-void
.end method

.method private final getDisplayText(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Ljava/lang/String;
    .locals 2

    .line 172
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final getTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final initControls()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    const-string v2, "dlg"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v3, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_add:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnAdd:Lcom/metamoji/ui/common/UiButton;

    .line 202
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 203
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 204
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    sget v4, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_delete:I

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    .line 205
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->select_organization_list_view:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    return-void
.end method

.method private final isDeletable(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez v0, :cond_0

    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getCurrent()Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static final onCreateDialog$lambda$1$lambda$0(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/view/View;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez p1, :cond_0

    const-string/jumbo p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->saveListIfDirty()V

    .line 226
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_editing:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->setMode(Z)V

    return-void
.end method

.method static final onCreateDialog$lambda$4$lambda$3(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/view/View;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->deleteItems()V

    return-void
.end method

.method static final onCreateDialog$lambda$6$lambda$5(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/view/View;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez p1, :cond_0

    const-string/jumbo p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->saveListIfDirty()V

    .line 241
    sget-object p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$Companion;->openDialog(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    return-void
.end method

.method static final onCreateDialog$lambda$9$lambda$8(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 256
    const-string p4, "null cannot be cast to non-null type android.widget.ListView"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.metamoji.ui.cabinet.user.OrganizationItem"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    .line 258
    iget-boolean p3, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_editing:Z

    const/4 p4, 0x0

    if-nez p3, :cond_2

    .line 260
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    const-string/jumbo p3, "viewModel"

    if-nez p2, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p4

    :cond_0
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->setSelectedOrganization(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V

    .line 261
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p4, p1

    :goto_0
    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;->Selected:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dismiss()V

    return-void

    .line 266
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->isDeletable(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;

    if-eqz p1, :cond_3

    move-object p4, p0

    check-cast p4, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;

    :cond_3
    if-eqz p4, :cond_4

    .line 268
    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$ViewHolder;->toggleCheckbox()V

    :cond_4
    return-void
.end method

.method public static final openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->Companion:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$Companion;->openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final selectItem(Lcom/metamoji/ui/cabinet/user/OrganizationItem;Z)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    const/4 v1, 0x0

    .line 371
    const-string v2, "btnDelete"

    if-eqz p2, :cond_2

    .line 372
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 373
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    if-nez p2, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 375
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 377
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 379
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private final setMode(Z)V
    .locals 2

    .line 313
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_editing:Z

    .line 314
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "listView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setSortable(Z)V

    .line 317
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_checked:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 318
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez p1, :cond_1

    const-string p1, "_adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 319
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->updateButton()V

    return-void
.end method

.method private final updateButton()V
    .locals 7

    .line 323
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_editing:Z

    .line 335
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 323
    const-string v2, "btnDelete"

    const-string v3, "btnLeft"

    const/4 v4, 0x0

    const-string v5, "btnRight"

    const/4 v6, 0x0

    if-nez v0, :cond_3

    if-nez v1, :cond_0

    .line 324
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    .line 325
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 326
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    .line 329
    :cond_1
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v6, v0

    :goto_0
    const/16 v0, 0x8

    .line 332
    invoke-virtual {v6, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 335
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    if-nez v0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_5
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 337
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    if-nez v0, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_6
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_7
    const/4 v1, 0x4

    .line 340
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v6, v0

    .line 343
    :goto_1
    invoke-virtual {v6, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 2

    .line 297
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    .line 298
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;->Cancelled:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 300
    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSelectOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 212
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    .line 214
    sget v0, Lcom/metamoji/noteanytime/R$layout;->cabinet_dialog_select_organization:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->mViewId:I

    .line 215
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Select_Organization_Title:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->mTitleId:I

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->mDone:Z

    const/4 v1, 0x1

    .line 217
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->mCancel:Z

    .line 218
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->mClose:Z

    .line 219
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v1, "onCreateDialog(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    .line 220
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->initControls()V

    .line 222
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "btnRight"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 223
    :cond_0
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 224
    new-instance v3, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    if-nez p1, :cond_1

    const-string p1, "btnLeft"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 230
    :cond_1
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnDelete:Lcom/metamoji/ui/common/UiButton;

    if-nez p1, :cond_2

    const-string p1, "btnDelete"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 234
    :cond_2
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->btnAdd:Lcom/metamoji/ui/common/UiButton;

    if-nez p1, :cond_3

    const-string p1, "btnAdd"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 239
    :cond_3
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->updateButton()V

    .line 248
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez v2, :cond_4

    const-string/jumbo v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->loadListIfNeed()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, p0, v0, v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    .line 251
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    if-nez p1, :cond_5

    const-string p1, "listView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    .line 252
    :cond_5
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$DragListener;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$DragListener;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    check-cast v0, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 253
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_editing:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setSortable(Z)V

    .line 254
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez v0, :cond_6

    const-string v0, "_adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->dlg:Landroid/app/Dialog;

    if-nez p1, :cond_7

    const-string p1, "dlg"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    return-object v1

    :cond_7
    return-object p1

    .line 212
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no view model"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 284
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    .line 285
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;->Cancelled:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 287
    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSelectOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;)V

    :cond_1
    return-void
.end method

.method public onOrganizationListChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 500
    :cond_0
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-direct {v0, p1, v1, p2}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    const-string p2, "_adapter"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 506
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-ltz p1, :cond_5

    if-nez v2, :cond_3

    .line 503
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    .line 504
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez v2, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v2, v0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 506
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_6
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->add(Ljava/lang/Object;)V

    .line 508
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->viewModel:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    if-nez p1, :cond_7

    const-string/jumbo p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;

    if-nez v0, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$OrganizationItemAdapter;->asList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->updateList(Ljava/util/List;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
