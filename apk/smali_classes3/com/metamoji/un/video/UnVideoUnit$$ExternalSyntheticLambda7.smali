.class public final synthetic Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/UnVideoUnit;

.field public final synthetic f$1:Lcom/metamoji/un/video/IWvvChairmansDirection;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/un/video/UnVideoUnit;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;->f$1:Lcom/metamoji/un/video/IWvvChairmansDirection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/un/video/UnVideoUnit;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda7;->f$1:Lcom/metamoji/un/video/IWvvChairmansDirection;

    invoke-static {v0, v1}, Lcom/metamoji/un/video/UnVideoUnit;->handleChairmansDirection$lambda$8(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    return-void
.end method
