.class public final Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SelectOrganizationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectOrganizationViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\u0018\u0000 I2\u00020\u0001:\u0001IB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0005J\u0006\u0010%\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0005J\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00050CJ\u0014\u0010F\u001a\u00020\"2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00050CJ\u0006\u0010H\u001a\u00020\"R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u000c\u0012\u0004\u0012\u00020\u00100\u000fR\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001f\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00150\u00150\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00150\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00150(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0017\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00050,\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010/\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u00103\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00102R\u0011\u00105\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00102R \u00107\u001a\u0008\u0012\u0004\u0012\u00020908X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R \u0010>\u001a\u0008\u0012\u0004\u0012\u00020?08X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010;\"\u0004\u0008A\u0010=R\u0014\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00050CX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "current",
        "Lcom/metamoji/li/dialog/OrganizationItem;",
        "getCurrent",
        "()Lcom/metamoji/li/dialog/OrganizationItem;",
        "setCurrent",
        "(Lcom/metamoji/li/dialog/OrganizationItem;)V",
        "dialogHostManager",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "getDialogHostManager",
        "()Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "addOrganizationReceptor",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;",
        "Lcom/metamoji/li/dialog/AddOrganizationDialog;",
        "getAddOrganizationReceptor",
        "()Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;",
        "editing",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getEditing",
        "()Landroidx/lifecycle/MutableLiveData;",
        "v",
        "isEditing",
        "()Z",
        "setEditing",
        "(Z)V",
        "_hasChecked",
        "_checkedSet",
        "",
        "addChecked",
        "",
        "item",
        "removeChecked",
        "clearChecked",
        "isChecked",
        "hasChecked",
        "Landroidx/lifecycle/LiveData;",
        "getHasChecked",
        "()Landroidx/lifecycle/LiveData;",
        "checkedList",
        "",
        "getCheckedList",
        "()Ljava/lang/Iterable;",
        "editCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getEditCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "addCompanyCommand",
        "getAddCompanyCommand",
        "deleteCompanyCommand",
        "getDeleteCompanyCommand",
        "activityRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivityRef",
        "()Ljava/lang/ref/WeakReference;",
        "setActivityRef",
        "(Ljava/lang/ref/WeakReference;)V",
        "fragmentRef",
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog;",
        "getFragmentRef",
        "setFragmentRef",
        "organizationItemList",
        "",
        "dirtyList",
        "loadList",
        "updateList",
        "list",
        "saveListIfDirty",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;


# instance fields
.field private final _checkedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/li/dialog/OrganizationItem;",
            ">;"
        }
    .end annotation
.end field

.field private final _hasChecked:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final addCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final addOrganizationReceptor:Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "Lcom/metamoji/li/dialog/AddOrganizationDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final checkedList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/metamoji/li/dialog/OrganizationItem;",
            ">;"
        }
    .end annotation
.end field

.field public current:Lcom/metamoji/li/dialog/OrganizationItem;

.field private final deleteCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

.field private dirtyList:Z

.field private final editCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final editing:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/dialog/SelectOrganizationDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final hasChecked:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private organizationItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/li/dialog/OrganizationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 103
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogHostManager;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialogHostManager;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    .line 104
    new-instance v1, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;)V

    const-string v2, "addOrganizationReceptor"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->register(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->addOrganizationReceptor:Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    .line 124
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->editing:Landroidx/lifecycle/MutableLiveData;

    .line 129
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_hasChecked:Landroidx/lifecycle/MutableLiveData;

    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    .line 151
    check-cast v0, Landroidx/lifecycle/LiveData;

    invoke-static {v0}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->hasChecked:Landroidx/lifecycle/LiveData;

    .line 152
    check-cast v1, Ljava/lang/Iterable;

    iput-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->checkedList:Ljava/lang/Iterable;

    .line 154
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->editCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 155
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->addCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 156
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->deleteCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-void
.end method

.method static final addOrganizationReceptor$lambda$0(Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;->getDialog()Lcom/metamoji/lib/dialog/IUtDialog;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;

    .line 106
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/UtDialogHostManager$ISubmission;->getDialog()Lcom/metamoji/lib/dialog/IUtDialog;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/dialog/AddOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getOk()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getResult()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->getFragmentRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    if-nez v0, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$get_adapter$p(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "_adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    :cond_2
    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    .line 113
    invoke-virtual {v0, v1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/li/dialog/OrganizationItem;

    .line 114
    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    .line 115
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v0, p1, v2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->insert(Ljava/lang/Object;I)V

    .line 119
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$OrganizationItemAdapter;->asList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->updateList(Ljava/util/List;)V

    .line 121
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addChecked(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_hasChecked:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_hasChecked:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_hasChecked:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final clearChecked()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 146
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_hasChecked:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getActivityRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activityRef"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAddCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->addCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getAddOrganizationReceptor()Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor<",
            "Lcom/metamoji/li/dialog/AddOrganizationDialog;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->addOrganizationReceptor:Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    return-object v0
.end method

.method public final getCheckedList()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/metamoji/li/dialog/OrganizationItem;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->checkedList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getCurrent()Lcom/metamoji/li/dialog/OrganizationItem;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->current:Lcom/metamoji/li/dialog/OrganizationItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "current"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeleteCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->deleteCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getDialogHostManager()Lcom/metamoji/lib/dialog/UtDialogHostManager;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    return-object v0
.end method

.method public final getEditCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->editCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getEditing()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->editing:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getFragmentRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/dialog/SelectOrganizationDialog;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->fragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fragmentRef"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHasChecked()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->hasChecked:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isChecked(Lcom/metamoji/li/dialog/OrganizationItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEditing()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->editing:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final loadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/li/dialog/OrganizationItem;",
            ">;"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/metamoji/li/dialog/OrganizationItem;->Companion:Lcom/metamoji/li/dialog/OrganizationItem$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/dialog/OrganizationItem$Companion;->loadFromUserDefaults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "organizationItemList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final removeChecked(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_checkedSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->_hasChecked:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final saveListIfDirty()V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->dirtyList:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->dirtyList:Z

    .line 180
    sget-object v0, Lcom/metamoji/li/dialog/OrganizationItem;->Companion:Lcom/metamoji/li/dialog/OrganizationItem$Companion;

    iget-object v1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "organizationItemList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/li/dialog/OrganizationItem$Companion;->saveToUserDefaults(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final setActivityRef(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setCurrent(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->current:Lcom/metamoji/li/dialog/OrganizationItem;

    return-void
.end method

.method public final setEditing(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->editing:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setFragmentRef(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/dialog/SelectOrganizationDialog;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->fragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/li/dialog/OrganizationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$SelectOrganizationViewModel;->dirtyList:Z

    return-void
.end method
