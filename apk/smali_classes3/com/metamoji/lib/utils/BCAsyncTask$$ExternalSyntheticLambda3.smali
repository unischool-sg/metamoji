.class public final synthetic Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/BCAsyncTask;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/BCAsyncTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

    invoke-static {v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->executeOnExecutor$lambda$4$lambda$3(Lcom/metamoji/lib/utils/BCAsyncTask;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
