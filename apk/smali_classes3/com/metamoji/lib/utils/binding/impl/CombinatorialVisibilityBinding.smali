.class public final Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;
.super Ljava/lang/Object;
.source "VisibilityBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;
.implements Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$Companion;,
        Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityBinding.kt\ncom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,224:1\n1915#2,2:225\n11705#3:227\n12052#3,3:228\n11705#3:231\n12052#3,3:232\n11705#3:235\n12052#3,3:236\n11705#3:239\n12052#3,3:240\n*S KotlinDebug\n*F\n+ 1 VisibilityBinding.kt\ncom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding\n*L\n119#1:225,2\n139#1:227\n139#1:228,3\n143#1:231\n143#1:232,3\n147#1:235\n147#1:236,3\n151#1:239\n151#1:240,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0002()B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00162\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0016\u0010\u001f\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0018H\u0002J!\u0010 \u001a\u00020\u00002\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020#0\"\"\u00020#H\u0016\u00a2\u0006\u0002\u0010$J!\u0010%\u001a\u00020\u00002\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020#0\"\"\u00020#H\u0016\u00a2\u0006\u0002\u0010$J!\u0010&\u001a\u00020\u00002\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020#0\"\"\u00020#H\u0016\u00a2\u0006\u0002\u0010$J!\u0010\'\u001a\u00020\u00002\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020#0\"\"\u00020#H\u0016\u00a2\u0006\u0002\u0010$R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "views",
        "",
        "Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;",
        "observed",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "applyVisibility",
        "",
        "list",
        "",
        "flag",
        "(Ljava/util/List;Ljava/lang/Boolean;)V",
        "onDataChanged",
        "value",
        "(Ljava/lang/Boolean;)V",
        "dispose",
        "addViews",
        "straightGone",
        "args",
        "",
        "Landroid/view/View;",
        "([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;",
        "straightInvisible",
        "inverseGone",
        "inverseInvisible",
        "ViewOption",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$Companion;


# instance fields
.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private observed:Lcom/metamoji/lib/utils/IDisposable;

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->data:Landroidx/lifecycle/LiveData;

    .line 100
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->views:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$observed$1;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$observed$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p1, v0}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public static final synthetic access$onDataChanged(Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private final addViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->views:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->data:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->applyVisibility(Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final applyVisibility(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    check-cast p1, Ljava/lang/Iterable;

    .line 225
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    .line 119
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->show(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onDataChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->views:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->applyVisibility(Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->observed:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public final getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public varargs inverseGone([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 236
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 147
    new-instance v4, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    sget-object v5, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v6, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-direct {v4, v3, v5, v6}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    .line 237
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 147
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->addViews(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic inverseGone([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->inverseGone([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;

    return-object p1
.end method

.method public varargs inverseInvisible([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 240
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 151
    new-instance v4, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    sget-object v5, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v6, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByInvisible:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-direct {v4, v3, v5, v6}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    .line 241
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 151
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->addViews(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic inverseInvisible([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->inverseInvisible([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;

    return-object p1
.end method

.method public varargs straightGone([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 228
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 139
    new-instance v4, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    sget-object v5, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v6, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-direct {v4, v3, v5, v6}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    .line 229
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 139
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->addViews(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic straightGone([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->straightGone([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;

    return-object p1
.end method

.method public varargs straightInvisible([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;
    .locals 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 232
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 143
    new-instance v4, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    sget-object v5, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v6, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByInvisible:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-direct {v4, v3, v5, v6}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    .line 233
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 143
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->addViews(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic straightInvisible([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;->straightInvisible([Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/ICombinatorialVisibilityBuilder;

    return-object p1
.end method
