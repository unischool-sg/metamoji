.class public final synthetic Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/nt/NtUnitController;

.field public final synthetic f$1:Lcom/metamoji/cm/CmContext;

.field public final synthetic f$2:Lcom/metamoji/un/video/UnVideoUnitContainerExtender;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/un/video/UnVideoUnitContainerExtender;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/nt/NtUnitController;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/un/video/UnVideoUnitContainerExtender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/nt/NtUnitController;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/cm/CmContext;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/un/video/UnVideoUnitContainerExtender;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->handleAddVideoUnit$lambda$0(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/un/video/UnVideoUnitContainerExtender;)V

    return-void
.end method
