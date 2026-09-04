.class public final Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;
.source "AddOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase<",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;",
        "owner",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "listener",
        "Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;)V",
        "refListener",
        "Ljava/lang/ref/WeakReference;",
        "onChanged",
        "",
        "value",
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
.field private final refListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 130
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;->refListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;->Init:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;

    if-eq p1, v0, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;->refListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;

    if-eqz v2, :cond_3

    .line 138
    sget-object v3, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;->Added:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;

    if-ne p1, v3, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getOrganizationId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 139
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;->onOrganizationListChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    sget-object p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->reset(Landroidx/fragment/app/FragmentActivity;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;->onChanged(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;)V

    return-void
.end method
