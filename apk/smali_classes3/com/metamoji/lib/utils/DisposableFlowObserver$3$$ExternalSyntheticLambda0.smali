.class public final synthetic Lcom/metamoji/lib/utils/DisposableFlowObserver$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/DisposableFlowObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/DisposableFlowObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/DisposableFlowObserver$3$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/DisposableFlowObserver;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/DisposableFlowObserver$3$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/DisposableFlowObserver;

    invoke-static {v0}, Lcom/metamoji/lib/utils/DisposableFlowObserver$3;->invokeSuspend$lambda$0(Lcom/metamoji/lib/utils/DisposableFlowObserver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
