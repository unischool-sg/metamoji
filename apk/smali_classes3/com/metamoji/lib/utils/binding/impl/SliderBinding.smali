.class public Lcom/metamoji/lib/utils/binding/impl/SliderBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.source "SliderBinding.kt"

# interfaces
.implements Lcom/google/android/material/slider/Slider$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/SliderBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/material/slider/Slider$OnChangeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001(BA\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bB;\u0008\u0016\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000cJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0010H\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0016J \u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0002J\u0017\u0010\"\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u0010#J \u0010$\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\'H\u0017R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/SliderBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "",
        "Lcom/google/android/material/slider/Slider$OnChangeListener;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "min",
        "max",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V",
        "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "slider",
        "Lcom/google/android/material/slider/Slider;",
        "getSlider",
        "()Lcom/google/android/material/slider/Slider;",
        "minObserver",
        "Landroidx/lifecycle/Observer;",
        "maxObserver",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "dispose",
        "clipByRange",
        "a",
        "b",
        "v",
        "fitToStep",
        "s",
        "onDataChanged",
        "(Ljava/lang/Float;)V",
        "onValueChange",
        "value",
        "fromUser",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/SliderBinding$Companion;


# instance fields
.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final max:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private maxObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final min:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private minObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/SliderBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 29
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->data:Landroidx/lifecycle/LiveData;

    .line 31
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->min:Landroidx/lifecycle/LiveData;

    .line 32
    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->max:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method private final clipByRange(FFF)F
    .locals 1

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 98
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method static final connect$lambda$0(Lcom/metamoji/lib/utils/binding/impl/SliderBinding;Lcom/google/android/material/slider/Slider;Ljava/lang/Float;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->clipByRange(FFF)F

    move-result p0

    .line 49
    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 52
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/slider/Slider;->setValueTo(F)V

    :cond_1
    return-void
.end method

.method static final connect$lambda$2(Lcom/metamoji/lib/utils/binding/impl/SliderBinding;Lcom/google/android/material/slider/Slider;Ljava/lang/Float;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->clipByRange(FFF)F

    move-result p0

    .line 63
    invoke-virtual {p1}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 66
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/slider/Slider;->setValueFrom(F)V

    :cond_1
    return-void
.end method

.method private final fitToStep(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    div-float/2addr p1, p2

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    return p2
.end method

.method private final getSlider()Lcom/google/android/material/slider/Slider;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/slider/Slider;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/slider/Slider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/slider/Slider;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-super {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->max:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/binding/impl/SliderBinding;Lcom/google/android/material/slider/Slider;)V

    .line 55
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->max:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->maxObserver:Landroidx/lifecycle/Observer;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->min:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/utils/binding/impl/SliderBinding;Lcom/google/android/material/slider/Slider;)V

    .line 69
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->min:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 59
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->minObserver:Landroidx/lifecycle/Observer;

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, v0, :cond_3

    .line 73
    move-object p1, p0

    check-cast p1, Lcom/google/android/material/slider/BaseOnChangeListener;

    invoke-virtual {p2, p1}, Lcom/google/android/material/slider/Slider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->minObserver:Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->min:Landroidx/lifecycle/LiveData;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->minObserver:Landroidx/lifecycle/Observer;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->maxObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_3

    .line 86
    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->max:Landroidx/lifecycle/LiveData;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 87
    :cond_2
    iput-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->maxObserver:Landroidx/lifecycle/Observer;

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getSlider()Lcom/google/android/material/slider/Slider;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/Slider;->removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    .line 92
    :cond_4
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->dispose()V

    return-void
.end method

.method public getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onDataChanged(Ljava/lang/Float;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getSlider()Lcom/google/android/material/slider/Slider;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    move-result v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v1, v2, p1}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->clipByRange(FFF)F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getStepSize()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->fitToStep(FF)F

    move-result p1

    .line 115
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v1

    cmpg-float v1, v1, p1

    if-nez v1, :cond_2

    return-void

    .line 116
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->onDataChanged(Ljava/lang/Float;)V

    return-void
.end method

.method public onValueChange(Lcom/google/android/material/slider/Slider;FZ)V
    .locals 0

    const-string/jumbo p3, "slider"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->getMutableData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 28
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    return-void
.end method
