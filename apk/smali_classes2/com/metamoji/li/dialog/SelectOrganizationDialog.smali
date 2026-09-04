.class public final Lcom/metamoji/li/dialog/SelectOrganizationDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "SelectOrganizationDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/IUtDialogHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;,
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;,
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;,
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;,
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;,
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectOrganizationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectOrganizationDialog.kt\ncom/metamoji/li/dialog/SelectOrganizationDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,609:1\n1#2:610\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 K2\u00020\u00012\u00020\u0002:\u0006JKLMNOB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0008\u0010,\u001a\u00020)H\u0014J\u0008\u0010-\u001a\u00020)H\u0014J \u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020/2\u0006\u00102\u001a\u00020/H\u0014J\u0008\u00103\u001a\u00020)H\u0016J\u001a\u00104\u001a\u00020+2\u0008\u00105\u001a\u0004\u0018\u0001062\u0006\u00107\u001a\u000208H\u0014J&\u00109\u001a\u0004\u0018\u00010+2\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0008\u0010>\u001a\u00020)H\u0016J\u0017\u0010?\u001a\u00020)2\u0008\u0010@\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010AJ\u0012\u0010B\u001a\u00020)2\u0008\u0010C\u001a\u0004\u0018\u00010+H\u0002J\u0018\u0010D\u001a\u00020)2\u0006\u0010E\u001a\u00020\u00132\u0006\u0010F\u001a\u00020\u0019H\u0002J\u0012\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020\u0006H\u0016R/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR/\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u000f\u0010\t\"\u0004\u0008\u0010\u0010\u000bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u00020\u0019*\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u0006*\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u00060#R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0018\u00010%R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "Lcom/metamoji/lib/dialog/IUtDialogHost;",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "currentCoId",
        "getCurrentCoId",
        "()Ljava/lang/String;",
        "setCurrentCoId",
        "(Ljava/lang/String;)V",
        "currentCoId$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "currentServerUrl",
        "getCurrentServerUrl",
        "setCurrentServerUrl",
        "currentServerUrl$delegate",
        "result",
        "Lcom/metamoji/li/dialog/OrganizationItem;",
        "getResult",
        "()Lcom/metamoji/li/dialog/OrganizationItem;",
        "setResult",
        "(Lcom/metamoji/li/dialog/OrganizationItem;)V",
        "isDeletable",
        "",
        "(Lcom/metamoji/li/dialog/OrganizationItem;)Z",
        "displayText",
        "getDisplayText",
        "(Lcom/metamoji/li/dialog/OrganizationItem;)Ljava/lang/String;",
        "viewModel",
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "_adapter",
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;",
        "listObserver",
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;",
        "listView",
        "Lcom/metamoji/ui/cabinet/user/OrganizationListView;",
        "onAddCompany",
        "",
        "v",
        "Landroid/view/View;",
        "onPositive",
        "onDialogClosing",
        "calcCustomContainerHeight",
        "",
        "currentBodyHeight",
        "currentContainerHeight",
        "maxContainerHeight",
        "preCreateBodyView",
        "createBodyView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onCreateView",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onEditModeChanged",
        "value",
        "(Ljava/lang/Boolean;)V",
        "onDeleteCompany",
        "view",
        "selectItem",
        "item",
        "selected",
        "queryDialogResultReceptor",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "tag",
        "SelectOrganizationViewModel",
        "Companion",
        "ListObserver",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private _adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private final currentCoId$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final currentServerUrl$delegate:Lkotlin/properties/ReadWriteProperty;

.field private listObserver:Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;

.field private listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

.field private result:Lcom/metamoji/li/dialog/OrganizationItem;

.field private viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "currentCoId"

    const-string v3, "getCurrentCoId()Ljava/lang/String;"

    const-class v4, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "currentServerUrl"

    const-string v3, "getCurrentServerUrl()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;

    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->currentCoId$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 196
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->currentServerUrl$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 241
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getDisplayText(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/OrganizationItem;)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getDisplayText(Lcom/metamoji/li/dialog/OrganizationItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/OrganizationListView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 96
    sget-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    return-object p0
.end method

.method public static final synthetic access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    return-object p0
.end method

.method public static final synthetic access$isDeletable(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/OrganizationItem;)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->isDeletable(Lcom/metamoji/li/dialog/OrganizationItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onAddCompany(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->onAddCompany(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onDeleteCompany(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->onDeleteCompany(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onEditModeChanged(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->onEditModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$selectItem(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/li/dialog/OrganizationItem;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->selectItem(Lcom/metamoji/li/dialog/OrganizationItem;Z)V

    return-void
.end method

.method public static final synthetic access$updateCustomHeight(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->updateCustomHeight()V

    return-void
.end method

.method static final createBodyView$lambda$7$lambda$6$lambda$5(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 391
    const-string p4, "null cannot be cast to non-null type android.widget.ListView"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.metamoji.li.dialog.OrganizationItem"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/li/dialog/OrganizationItem;

    .line 392
    iget-object p3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    const-string p3, "viewModel"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    :cond_0
    invoke-virtual {p3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->isEditing()Z

    move-result p3

    if-nez p3, :cond_1

    .line 394
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->result:Lcom/metamoji/li/dialog/OrganizationItem;

    .line 395
    check-cast p0, Lcom/metamoji/lib/dialog/IUtDialog;

    const/4 p1, 0x1

    invoke-static {p0, p4, p1, p4}, Lcom/metamoji/lib/dialog/IUtDialog;->complete$default(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/IUtDialog$Status;ILjava/lang/Object;)V

    return-void

    .line 399
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->isDeletable(Lcom/metamoji/li/dialog/OrganizationItem;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 400
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;

    if-eqz p1, :cond_2

    move-object p4, p0

    check-cast p4, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;

    :cond_2
    if-eqz p4, :cond_3

    .line 401
    invoke-virtual {p4}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ViewHolder;->toggleCheckbox()V

    :cond_3
    return-void
.end method

.method private final getDisplayText(Lcom/metamoji/li/dialog/OrganizationItem;)Ljava/lang/String;
    .locals 2

    .line 237
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/OrganizationItem;->getId()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/OrganizationItem;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final isDeletable(Lcom/metamoji/li/dialog/OrganizationItem;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getCurrent()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final onAddCompany(Landroid/view/View;)V
    .locals 2

    .line 276
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const/4 v0, 0x0

    const-string v1, "viewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->saveListIfDirty()V

    .line 277
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getAddOrganizationReceptor()Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->showDialog(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final onAddCompany$lambda$0(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;)Lcom/metamoji/li/dialog/AddOrganizationDialog;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object p1, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->Companion:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->reset()V

    .line 279
    new-instance p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;

    invoke-direct {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;-><init>()V

    return-object p0
.end method

.method private final onDeleteCompany(Landroid/view/View;)V
    .locals 5

    .line 472
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const-string v0, "viewModel"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getCheckedList()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_adapter"

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/li/dialog/OrganizationItem;

    .line 473
    iget-object v4, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_1
    invoke-virtual {v4, v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 480
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->clearChecked()V

    .line 481
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->asList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->updateList(Ljava/util/List;)V

    return-void
.end method

.method private final onEditModeChanged(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x1

    .line 447
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 448
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const-string v1, "viewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->saveListIfDirty()V

    .line 449
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    if-nez v0, :cond_1

    const-string v0, "listView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setSortable(Z)V

    .line 450
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->clearChecked()V

    .line 451
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez p1, :cond_3

    const-string p1, "_adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static final onPositive$lambda$1(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->updateCustomHeight()V

    return-void
.end method

.method private final selectItem(Lcom/metamoji/li/dialog/OrganizationItem;Z)V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const/4 v1, 0x0

    .line 486
    const-string v2, "viewModel"

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    .line 487
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->addChecked(Lcom/metamoji/li/dialog/OrganizationItem;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 489
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->removeChecked(Lcom/metamoji/li/dialog/OrganizationItem;)V

    return-void
.end method


# virtual methods
.method protected calcCustomContainerHeight(III)I
    .locals 4

    .line 313
    iget-object p2, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    const/4 v0, 0x0

    const-string v1, "listView"

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    check-cast p2, Landroid/widget/ListView;

    invoke-static {p2}, Lcom/metamoji/lib/utils/ViewExtKt;->calcFixedContentHeight(Landroid/widget/ListView;)I

    move-result p2

    .line 314
    iget-object v2, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int v2, p3, p1

    if-ge p2, v2, :cond_4

    .line 316
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 320
    :cond_2
    iget-object p3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    if-nez p3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p3

    :goto_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p2}, Lcom/metamoji/lib/utils/ViewExtKt;->setLayoutHeight(Landroid/view/View;I)V

    add-int/2addr p2, p1

    return p2

    .line 317
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, p1

    :goto_2
    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->setLayoutHeight(Landroid/view/View;I)V

    return p3
.end method

.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget-object v2, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "requireActivity(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    move-result-object v2

    .line 338
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->setFragmentRef(Ljava/lang/ref/WeakReference;)V

    .line 339
    new-instance v3, Lcom/metamoji/li/dialog/OrganizationItem;

    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getCurrentCoId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getCurrentServerUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v7, v6

    :cond_1
    invoke-direct {v3, v5, v6, v7}, Lcom/metamoji/li/dialog/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->setCurrent(Lcom/metamoji/li/dialog/OrganizationItem;)V

    .line 337
    iput-object v2, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    .line 341
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_select_organization:I

    invoke-interface {v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 342
    sget v2, Lcom/metamoji/noteanytime/R$id;->select_organization_list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    iput-object v2, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    .line 344
    iget-object v2, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v5, 0x6

    .line 346
    new-array v5, v5, [Lcom/metamoji/lib/utils/IDisposable;

    iget-object v6, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const-string v7, "viewModel"

    const/4 v8, 0x0

    if-nez v6, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getAddCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v6

    .line 347
    move-object v10, v0

    check-cast v10, Landroidx/lifecycle/LifecycleOwner;

    .line 348
    sget v9, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_add:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v11, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$1;

    invoke-direct {v11, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 346
    invoke-virtual {v6, v10, v9, v11}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    .line 353
    iget-object v6, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v6, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_3
    invoke-virtual {v6}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getDeleteCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v6

    .line 355
    sget v9, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_delete:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    new-instance v11, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$2;

    invoke-direct {v11, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$2;-><init>(Ljava/lang/Object;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 353
    invoke-virtual {v6, v10, v9, v11}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    .line 359
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    .line 361
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getLeftButton()Landroid/widget/Button;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/view/View;

    .line 362
    iget-object v6, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v6, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getEditing()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroidx/lifecycle/LiveData;

    .line 363
    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    .line 364
    sget-object v14, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByInvisible:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    .line 359
    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 366
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    .line 368
    sget v6, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_delete:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v6, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v6, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_5
    invoke-virtual {v6}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getEditing()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroidx/lifecycle/LiveData;

    .line 370
    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    .line 371
    sget-object v14, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    .line 366
    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 373
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    .line 375
    sget v6, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_delete:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v3, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v3, :cond_6

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v8

    :cond_6
    invoke-virtual {v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getHasChecked()Landroidx/lifecycle/LiveData;

    move-result-object v12

    .line 377
    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 373
    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v5, v6

    .line 379
    iget-object v3, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v3, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v8

    :cond_7
    invoke-virtual {v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getEditing()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LiveData;

    new-instance v6, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$3;

    invoke-direct {v6, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$createBodyView$2$3;-><init>(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v10, v6}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v5, v6

    .line 344
    invoke-virtual {v2, v5}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 383
    new-instance v2, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/content/Context;

    iget-object v4, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v4, :cond_8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v8

    :cond_8
    invoke-virtual {v4}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->loadList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    .line 384
    new-instance v3, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;

    invoke-direct {v3, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    iput-object v3, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listObserver:Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;

    check-cast v3, Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 387
    iget-object v2, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listView:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    if-nez v2, :cond_9

    const-string v2, "listView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    .line 388
    :cond_9
    new-instance v3, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;

    invoke-direct {v3, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$DragListener;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    check-cast v3, Lcom/metamoji/ui/cabinet/SimpleDragListener;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 389
    new-instance v3, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 406
    iget-object v3, v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez v3, :cond_a

    const-string v3, "_adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v8, v3

    :goto_0
    check-cast v8, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v8}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v1
.end method

.method public final getCurrentCoId()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->currentCoId$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentServerUrl()Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->currentServerUrl$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Lcom/metamoji/li/dialog/OrganizationItem;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->result:Lcom/metamoji/li/dialog/OrganizationItem;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "re-create:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/UtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 417
    sget-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 418
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onDestroyView()V

    .line 419
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listObserver:Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->_adapter:Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez v0, :cond_0

    const-string v0, "_adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listObserver:Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 421
    iput-object v2, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->listObserver:Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method protected onDialogClosing()V
    .locals 3

    .line 299
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onDialogClosing()V

    .line 300
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->saveListIfDirty()V

    .line 301
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->setEditing(Z)V

    return-void
.end method

.method protected onPositive()V
    .locals 11

    .line 284
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->isEditing()Z

    move-result v0

    .line 288
    iget-object v3, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    .line 285
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->setEditing(Z)V

    .line 286
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    invoke-virtual {p0, v1, v4, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setRightButton(IZZ)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 288
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->setEditing(Z)V

    .line 289
    move-object v5, p0

    check-cast v5, Lcom/metamoji/lib/dialog/UtDialog;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButton$default(Lcom/metamoji/lib/dialog/UtDialog;IZZILjava/lang/Object;)V

    .line 293
    :goto_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public preCreateBodyView()V
    .locals 3

    .line 326
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Select_Organization_Title:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setTitle(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE_LEFT:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 328
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setRightButton(IZZ)V

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$dimen;->dlg_common_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/lib/utils/ViewExtKt;->px2dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setLimitWidth(I)V

    .line 330
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void
.end method

.method public queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getDialogHostManager()Lcom/metamoji/lib/dialog/UtDialogHostManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object p1

    return-object p1
.end method

.method public final setCurrentCoId(Ljava/lang/String;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->currentCoId$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCurrentServerUrl(Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->currentServerUrl$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setResult(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->result:Lcom/metamoji/li/dialog/OrganizationItem;

    return-void
.end method
