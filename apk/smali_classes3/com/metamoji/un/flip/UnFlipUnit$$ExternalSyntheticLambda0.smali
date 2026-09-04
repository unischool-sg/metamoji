.class public final synthetic Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/flip/UnFlipUnit;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/metamoji/ns/direction/INsDirectionObserver;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/flip/UnFlipUnit;ZLcom/metamoji/ns/direction/INsDirectionObserver;ZIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/flip/UnFlipUnit;

    iput-boolean p2, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/ns/direction/INsDirectionObserver;

    iput-boolean p4, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$3:Z

    iput p5, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$4:I

    iput-boolean p6, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/flip/UnFlipUnit;

    iget-boolean v1, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/ns/direction/INsDirectionObserver;

    iget-boolean v3, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$3:Z

    iget v4, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$4:I

    iget-boolean v5, p0, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/flip/UnFlipUnit;->$r8$lambda$AiCvIwlh1ZYgPpVzpTGKdD2xjOM(Lcom/metamoji/un/flip/UnFlipUnit;ZLcom/metamoji/ns/direction/INsDirectionObserver;ZIZ)V

    return-void
.end method
