.class public final synthetic Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/flip/UnFlipUnitManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

    invoke-static {v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->startAnimation$lambda$5(Lcom/metamoji/un/flip/UnFlipUnitManager;)V

    return-void
.end method
