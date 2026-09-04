.class public final Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;
.super Ljava/lang/Object;
.source "SelectOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001#B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001cJ\u0014\u0010 \u001a\u00020\u00182\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001cJ\u0006\u0010\"\u001a\u00020\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007\"\u0004\u0008\u0010\u0010\u0005R\u001f\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;",
        "",
        "current",
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V",
        "getCurrent",
        "()Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "addOrganizationViewModel",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "getAddOrganizationViewModel",
        "()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "setAddOrganizationViewModel",
        "(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V",
        "selectedOrganization",
        "getSelectedOrganization",
        "setSelectedOrganization",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;",
        "kotlin.jvm.PlatformType",
        "getStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "registerObserver",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "organizationItemList",
        "",
        "dirtyList",
        "",
        "loadListIfNeed",
        "updateList",
        "list",
        "saveListIfDirty",
        "Status",
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
.field private addOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

.field private final current:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

.field private dirtyList:Z

.field private organizationItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedOrganization:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V
    .locals 1

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->current:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    .line 89
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;->Init:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->addOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    return-object v0
.end method

.method public final getCurrent()Lcom/metamoji/ui/cabinet/user/OrganizationItem;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->current:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    return-object v0
.end method

.method public final getSelectedOrganization()Lcom/metamoji/ui/cabinet/user/OrganizationItem;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->selectedOrganization:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final loadListIfNeed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->Companion:Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;->loadFromUserDefaults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "organizationItemList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationObserver;

    invoke-direct {v2, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final saveListIfDirty()V
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->dirtyList:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->dirtyList:Z

    .line 115
    sget-object v0, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->Companion:Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "organizationItemList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;->saveToUserDefaults(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final setAddOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->addOrganizationViewModel:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    return-void
.end method

.method public final setSelectedOrganization(Lcom/metamoji/ui/cabinet/user/OrganizationItem;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->selectedOrganization:Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    return-void
.end method

.method public final updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->organizationItemList:Ljava/util/List;

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->dirtyList:Z

    return-void
.end method
