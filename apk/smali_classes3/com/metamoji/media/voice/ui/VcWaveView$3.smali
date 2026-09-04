.class Lcom/metamoji/media/voice/ui/VcWaveView$3;
.super Ljava/lang/Object;
.source "VcWaveView.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcWaveView;->createWaveData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcWaveView;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$3;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/io/File;ZZ)V
    .locals 0

    return-void
.end method
