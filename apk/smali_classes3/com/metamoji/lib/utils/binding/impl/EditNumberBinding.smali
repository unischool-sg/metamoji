.class public Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;
.super Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;
.source "NumberBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Number;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u0012*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0012B3\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0014J\u0012\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016R\u001c\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;",
        "N",
        "",
        "Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "revert",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)V",
        "onDataChanged",
        "",
        "v",
        "onViewValueChanged",
        "tx",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;


# instance fields
.field private final revert:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "TN;>;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TN;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "revert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/metamoji/lib/utils/ConvertLiveData;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/metamoji/lib/utils/ConvertLiveData;-><init>(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p2}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 37
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->revert:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final _init_$lambda$0(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final _init_$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->onDataChanged(Ljava/lang/String;)V

    return-void
.end method

.method protected onDataChanged(Ljava/lang/String;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->revert:Lkotlin/jvm/functions/Function1;

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->revert:Lkotlin/jvm/functions/Function1;

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->getMutableData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
