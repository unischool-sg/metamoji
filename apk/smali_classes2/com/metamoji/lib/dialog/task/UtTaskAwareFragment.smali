.class public abstract Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;
.super Landroidx/fragment/app/Fragment;
.source "UtTaskAwareFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtTaskAwareFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtTaskAwareFragment.kt\ncom/metamoji/lib/dialog/task/UtTaskAwareFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0019H\u0004\u00a2\u0006\u0002\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R/\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "bundle",
        "Lcom/metamoji/lib/dialog/UtBundleDelegate;",
        "getBundle",
        "()Lcom/metamoji/lib/dialog/UtBundleDelegate;",
        "<set-?>",
        "",
        "immortalTaskName",
        "getImmortalTaskName",
        "()Ljava/lang/String;",
        "setImmortalTaskName",
        "(Ljava/lang/String;)V",
        "immortalTaskName$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "ownerTask",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "getOwnerTask",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "getViewModel",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "dialog"
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


# instance fields
.field private final bundle:Lcom/metamoji/lib/dialog/UtBundleDelegate;

.field private final immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "immortalTaskName"

    const-string v3, "getImmortalTaskName()Ljava/lang/String;"

    const-class v4, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Lcom/metamoji/lib/dialog/UtBundleDelegate;

    new-instance v1, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;)V

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->bundle:Lcom/metamoji/lib/dialog/UtBundleDelegate;

    .line 25
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method static final bundle$lambda$0(Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;)Landroid/os/Bundle;
    .locals 0

    .line 24
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragmentKt;->ensureArguments(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final getOwnerTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->getImmortalTaskName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->bundle:Lcom/metamoji/lib/dialog/UtBundleDelegate;

    return-object v0
.end method

.method public final getImmortalTaskName()Ljava/lang/String;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->getOwnerTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v1, v0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-virtual {v1, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setImmortalTaskName(Ljava/lang/String;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->immortalTaskName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/task/UtTaskAwareFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
