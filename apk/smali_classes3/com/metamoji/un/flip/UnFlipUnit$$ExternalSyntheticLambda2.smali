.class public final synthetic Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/flip/UnFlipUnit;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/metamoji/ns/direction/INsDirectionObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/flip/UnFlipUnit;ZIZLcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/flip/UnFlipUnit;

    iput-boolean p2, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$2:I

    iput-boolean p4, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$4:Lcom/metamoji/ns/direction/INsDirectionObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/flip/UnFlipUnit;

    iget-boolean v1, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$2:I

    iget-boolean v3, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$3:Z

    iget-object v4, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;->f$4:Lcom/metamoji/ns/direction/INsDirectionObserver;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/un/flip/UnFlipUnit;->$r8$lambda$xfN8cibRi19CxbRLFZRTPYlD1wo(Lcom/metamoji/un/flip/UnFlipUnit;ZIZLcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void
.end method
