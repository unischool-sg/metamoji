.class public final synthetic Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

    iput-object p2, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

    iget-object v1, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;->f$1:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/metamoji/lib/utils/BCAsyncTask;->publishProgress$lambda$5(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
