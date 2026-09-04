.class public Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.source "RadioGroupBinding.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding<",
        "TT;>;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000  *\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0001 B\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0017\u0008\u0016\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\nJ$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00102\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eJ\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u0017\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0002\u0010\u001bJ\u001a\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u001fH\u0016R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "(Landroidx/lifecycle/LiveData;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "idResolver",
        "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;",
        "radioGroup",
        "Landroid/widget/RadioGroup;",
        "getRadioGroup",
        "()Landroid/widget/RadioGroup;",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "dispose",
        "onDataChanged",
        "v",
        "(Ljava/lang/Object;)V",
        "onCheckedChanged",
        "group",
        "checkedId",
        "",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding$Companion;


# instance fields
.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 65
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->data:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private final getRadioGroup()Landroid/widget/RadioGroup;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final connect(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/RadioGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/RadioGroup;",
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

    .line 75
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    .line 76
    move-object p3, p2

    check-cast p3, Landroid/view/View;

    invoke-super {p0, p1, p3}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p3, :cond_1

    .line 78
    move-object p1, p0

    check-cast p1, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getRadioGroup()Landroid/widget/RadioGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->dispose()V

    return-void
.end method

.method public getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    if-nez p1, :cond_0

    const-string p1, "idResolver"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1, p2}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->id2value(I)Ljava/lang/Object;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getMutableData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDataChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->getRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RadioGroupBinding;->idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    if-nez v1, :cond_1

    const-string v1, "idResolver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v1, p1}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->value2id(Ljava/lang/Object;)I

    move-result p1

    .line 96
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2
    :goto_0
    return-void
.end method
