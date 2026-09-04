.class Lcom/metamoji/media/voice/controller/VcRecordingsController$7;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayFromAuthorInfo(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$finalPlayDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Ljava/util/Date;)V
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

    .line 778
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$7;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$7;->val$finalPlayDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$7;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$7;->val$finalPlayDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromDate(Ljava/util/Date;)V

    return-void
.end method
