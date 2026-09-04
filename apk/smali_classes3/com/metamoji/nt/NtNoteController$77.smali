.class Lcom/metamoji/nt/NtNoteController$77;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleForSchoolPersonalModeTypeChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10847
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$77;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 10851
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    .line 10852
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitStateManager;->getUnitsInPage()Ljava/util/Collection;

    move-result-object v0

    .line 10853
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitController;

    .line 10854
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$soundunit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10855
    check-cast v1, Lcom/metamoji/un/sound/UnSoundUnit;

    .line 10856
    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10857
    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    return-void

    .line 10859
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10860
    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    :cond_2
    return-void
.end method
