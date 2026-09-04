.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;

.field public final synthetic f$1:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->onButtonChecked$lambda$3(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;Lcom/google/android/material/button/MaterialButtonToggleGroup;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
