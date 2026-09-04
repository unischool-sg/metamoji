.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Ljava/util/List;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;

    invoke-static {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;->onDataChanged$lambda$1(Lcom/google/android/material/button/MaterialButtonToggleGroup;Ljava/util/List;Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonGroupBinding;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
