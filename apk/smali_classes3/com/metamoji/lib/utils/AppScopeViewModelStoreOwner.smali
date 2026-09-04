.class public final Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;
.super Ljava/lang/Object;
.source "AppScopeViewModelStoreOwner.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "<init>",
        "()V",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "getViewModelStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "releaseViewModelStore",
        "",
        "utils"
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
.field public static final INSTANCE:Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;

.field private static final viewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;-><init>()V

    sput-object v0, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;->INSTANCE:Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;

    .line 13
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    sput-object v0, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 13
    sget-object v0, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public final releaseViewModelStore()V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    return-void
.end method
