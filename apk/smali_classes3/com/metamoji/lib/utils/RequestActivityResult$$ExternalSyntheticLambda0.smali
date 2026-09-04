.class public final synthetic Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/RequestActivityResult;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/RequestActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/RequestActivityResult;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/RequestActivityResult$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/RequestActivityResult;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/metamoji/lib/utils/RequestActivityResult;->launcher$lambda$0(Lcom/metamoji/lib/utils/RequestActivityResult;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
