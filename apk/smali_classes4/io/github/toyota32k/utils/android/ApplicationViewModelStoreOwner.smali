.class public final Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;
.super Ljava/lang/Object;
.source "ApplicationViewModelStoreOwner.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "<init>",
        "()V",
        "mViewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "getMViewModelStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "mViewModelStore$delegate",
        "Lkotlin/Lazy;",
        "viewModelStore",
        "getViewModelStore",
        "releaseViewModelStore",
        "",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;

.field private static final mViewModelStore$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;

    invoke-direct {v0}, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;-><init>()V

    sput-object v0, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;->INSTANCE:Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;

    .line 7
    new-instance v0, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;->mViewModelStore$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 7
    sget-object v0, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;->mViewModelStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method static final mViewModelStore_delegate$lambda$0()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 7
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 10
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;->getMViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public final releaseViewModelStore()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/ApplicationViewModelStoreOwner;->getMViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    return-void
.end method
