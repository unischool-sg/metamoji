.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/binding/impl/SliderBinding;

.field public final synthetic f$1:Lcom/google/android/material/slider/Slider;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/impl/SliderBinding;Lcom/google/android/material/slider/Slider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/binding/impl/SliderBinding;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/slider/Slider;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/binding/impl/SliderBinding;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/SliderBinding$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/slider/Slider;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, v1, p1}, Lcom/metamoji/lib/utils/binding/impl/SliderBinding;->connect$lambda$0(Lcom/metamoji/lib/utils/binding/impl/SliderBinding;Lcom/google/android/material/slider/Slider;Ljava/lang/Float;)V

    return-void
.end method
