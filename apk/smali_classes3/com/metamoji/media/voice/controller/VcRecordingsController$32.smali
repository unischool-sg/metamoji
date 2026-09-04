.class Lcom/metamoji/media/voice/controller/VcRecordingsController$32;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$doForceFinal:Z

.field final synthetic val$playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3055
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;->val$playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-boolean p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;->val$doForceFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3058
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;->val$playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-boolean v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;->val$doForceFinal:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didUpdateModel(Z)V

    return-void
.end method
