.class public final synthetic Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvVideoController;

.field public final synthetic f$1:Lcom/metamoji/video/AmvVideoController$Models;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/AmvVideoController$Models;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvVideoController;

    iput-object p2, p0, Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/video/AmvVideoController$Models;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvVideoController;

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-static {v0, v1}, Lcom/metamoji/video/AmvVideoController$Models;->minControllerWidth_delegate$lambda$0(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/AmvVideoController$Models;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
