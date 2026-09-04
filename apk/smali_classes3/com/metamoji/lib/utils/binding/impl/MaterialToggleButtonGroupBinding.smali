.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;
.super Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;
.source "MaterialToggleButtonGroupBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase<",
        "TT;",
        "Ljava/util/List<",
        "+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialToggleButtonGroupBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialToggleButtonGroupBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1915#2,2:85\n1642#2,10:87\n1915#2:97\n1916#2:99\n1652#2:100\n1#3:98\n*S KotlinDebug\n*F\n+ 1 MaterialToggleButtonGroupBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding\n*L\n50#1:85,2\n64#1:87,10\n64#1:97\n64#1:99\n64#1:100\n64#1:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u001e*\u0004\u0008\u0000\u0010\u00012\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002:\u0001\u001eB%\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002J&\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0014J\"\u0010\u0019\u001a\u00020\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;",
        "",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "busy",
        "",
        "inBusy",
        "",
        "fn",
        "Lkotlin/Function0;",
        "connect",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "idResolver",
        "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;",
        "onDataChanged",
        "v",
        "onButtonChecked",
        "group",
        "checkedId",
        "",
        "isChecked",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$Companion;


# instance fields
.field private busy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method private final inBusy(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->busy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->busy:Z

    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->busy:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->busy:Z

    throw p1

    :cond_0
    return-void
.end method

.method static final onButtonChecked$lambda$3(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;Lcom/google/android/material/button/MaterialButtonToggleGroup;)Lkotlin/Unit;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Integer;

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->id2value(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 64
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onDataChanged$lambda$1(Lcom/google/android/material/button/MaterialButtonToggleGroup;Ljava/util/List;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;)Lkotlin/Unit;
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 85
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->value2id(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p2, v0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 62
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-direct {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->inBusy(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->onDataChanged(Ljava/util/List;)V

    return-void
.end method

.method protected onDataChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Ljava/util/List;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;)V

    invoke-direct {p0, v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->inBusy(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
