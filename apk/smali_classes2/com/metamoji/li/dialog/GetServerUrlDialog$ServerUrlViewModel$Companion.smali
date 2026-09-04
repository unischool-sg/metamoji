.class public final Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;
.super Ljava/lang/Object;
.source "GetServerUrlDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "instanceFor",
        "Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast p1, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-direct {v2, v3, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 24
    const-class p1, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    .line 23
    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    return-object p1
.end method
