.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
.super Ljava/lang/Object;
.source "MaterialToggleButtonsBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;,
        Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;,
        Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;,
        Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialToggleButtonsBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialToggleButtonsBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,145:1\n1#2:146\n221#3,2:147\n*S KotlinDebug\n*F\n+ 1 MaterialToggleButtonsBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding\n*L\n103#1:147,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0004,-./B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nJ$\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cJ\'\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001f\u00a2\u0006\u0002\u0010 J\'\u0010!\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00140#\u00a2\u0006\u0002\u0008%J\u0008\u0010\'\u001a\u00020\u0014H\u0016J\"\u0010(\u001a\u00020\u00142\u0008\u0010)\u001a\u0004\u0018\u00010\n2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u001dH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0008\u0012\u00060\u0012R\u00020\u00000\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "toggleGroup",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "getToggleGroup",
        "()Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "setToggleGroup",
        "(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V",
        "buttons",
        "",
        "",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;",
        "connect",
        "",
        "view",
        "add",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "button",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;",
        "(Landroidx/lifecycle/LifecycleOwner;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;",
        "addViewsByBuilder",
        "fn",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
        "Lkotlin/ExtensionFunctionType;",
        "disposed",
        "dispose",
        "onButtonChecked",
        "group",
        "checkedId",
        "isChecked",
        "DataObserver",
        "ButtonAndData",
        "Builder",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;


# instance fields
.field private final buttons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private disposed:Z

.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private toggleGroup:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->buttons:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 26
    sget-object p1, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method


# virtual methods
.method public final add(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->buttons:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;-><init>(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 75
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->toggleGroup:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    move-object v0, v1

    :cond_4
    check-cast v0, Ljava/lang/Integer;

    :cond_5
    if-eqz v0, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final varargs add(Landroidx/lifecycle/LifecycleOwner;[Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttons"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 82
    invoke-virtual {v2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->getButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->add(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final addViewsByBuilder(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$Builder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;)V

    .line 96
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final connect(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->toggleGroup:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->buttons:Ljava/util/Map;

    .line 147
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;

    .line 104
    invoke-virtual {v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->dispose()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->buttons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->toggleGroup:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->disposed:Z

    return-void
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public final getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->toggleGroup:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    return-object v0
.end method

.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->buttons:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setToggleGroup(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->toggleGroup:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    return-void
.end method
