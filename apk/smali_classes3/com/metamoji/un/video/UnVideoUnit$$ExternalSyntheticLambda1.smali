.class public final synthetic Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/UnVideoUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/video/UnVideoUnit;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-static {v0}, Lcom/metamoji/un/video/UnVideoUnit;->manipulationListener_delegate$lambda$11(Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;

    move-result-object v0

    return-object v0
.end method
