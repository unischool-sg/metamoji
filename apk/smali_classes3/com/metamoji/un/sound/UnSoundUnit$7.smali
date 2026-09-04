.class Lcom/metamoji/un/sound/UnSoundUnit$7;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1298
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1303
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->removeViewportListener()V

    .line 1305
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-static {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->-$$Nest$mgetUnitManager(Lcom/metamoji/un/sound/UnSoundUnit;)Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setActiveUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1307
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->closeRecorder()V

    .line 1309
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 1316
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$7;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    .line 1320
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 1321
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 1322
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1323
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    const-string v2, "recordingSoundUnit"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->changeUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
