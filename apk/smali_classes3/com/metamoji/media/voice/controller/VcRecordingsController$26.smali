.class Lcom/metamoji/media/voice/controller/VcRecordingsController$26;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleAddRecordingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 2540
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$26;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2543
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$26;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->syncRecordingsFromMediaServer()V

    return-void
.end method
