.class Lcom/metamoji/media/voice/controller/VcRecordingsManager$5;
.super Ljava/lang/Object;
.source "VcRecordingsManager.java"

# interfaces
.implements Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData$IForEachBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsManager;->handleAddRecordingsDirection(Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1741
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$5;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public block(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    .line 1751
    const-string v0, "$addedToUploadManager"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 1753
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$5;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v0, v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return v1
.end method
