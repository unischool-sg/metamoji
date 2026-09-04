.class public final synthetic Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/metamoji/cm/CmContext;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/cm/CmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/cm/CmContext;

    invoke-static {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6;->lambda$action$0(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
