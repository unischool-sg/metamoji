.class public final synthetic Lio/github/toyota32k/utils/lifecycle/LiveDataExtKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/LiveDataExtKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/github/toyota32k/utils/lifecycle/LiveDataExtKt$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LiveDataExtKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lio/github/toyota32k/utils/lifecycle/LiveDataExtKt$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/utils/lifecycle/LiveDataExtKt;->$r8$lambda$sb04_6vO39XfX2J8P2cN2aJVavk(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
