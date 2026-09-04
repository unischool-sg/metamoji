.class public final synthetic Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

    iput-object p2, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/lib/utils/BCAsyncTask;

    iget-object v1, p0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/metamoji/lib/utils/BCAsyncTask;->executeOnExecutor$lambda$4(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)V

    return-void
.end method
