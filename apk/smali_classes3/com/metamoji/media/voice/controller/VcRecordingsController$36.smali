.class Lcom/metamoji/media/voice/controller/VcRecordingsController$36;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Ljava/util/Set<",
        "Lcom/metamoji/ctold/tag/CtTagInstance;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3332
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$36;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3332
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$36;->invoke(Ljava/util/Set;)V

    return-void
.end method

.method public invoke(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)V"
        }
    .end annotation

    .line 3335
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 3336
    const-string/jumbo v1, "ticket"

    invoke-virtual {v0, v1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 3337
    const-string v2, "indexId"

    invoke-virtual {v0, v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 3340
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$36;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_INDEX:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v1, v0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->removeIndex(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtCommand;)V

    goto :goto_0

    :cond_0
    return-void
.end method
