.class Lcom/metamoji/media/voice/ui/VcPlayerBar$14;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Lcom/metamoji/media/voice/controller/VcRecordingsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 626
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$14;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$14;->val$recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$14;->val$recordingsController:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->syncRecordingsFromMediaServer()V

    :cond_0
    return-void
.end method
