.class public final synthetic Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Landroidx/lifecycle/LiveData;

.field public final synthetic f$3:Landroidx/lifecycle/LiveData;

.field public final synthetic f$4:Landroidx/lifecycle/LiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function3;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$1:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$2:Landroidx/lifecycle/LiveData;

    iput-object p4, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$3:Landroidx/lifecycle/LiveData;

    iput-object p5, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$4:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$1:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$2:Landroidx/lifecycle/LiveData;

    iget-object v3, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$3:Landroidx/lifecycle/LiveData;

    iget-object v4, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$$ExternalSyntheticLambda10;->f$4:Landroidx/lifecycle/LiveData;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest$lambda$13$lambda$10(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function3;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
