.class public final synthetic Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;->f$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;->f$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->lambda$waitTillPresenter$16(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/Runnable;)V

    return-void
.end method
