.class public final synthetic Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

    iput-object p2, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda1;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/flip/UnFlipUnitManager;->flipUnitFlipToFlipState$lambda$3(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;IZ)V

    return-void
.end method
