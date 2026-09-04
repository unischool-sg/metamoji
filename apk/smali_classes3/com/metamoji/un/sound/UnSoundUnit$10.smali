.class Lcom/metamoji/un/sound/UnSoundUnit$10;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->record()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;

.field final synthetic val$self:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;)V
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

    .line 1930
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->val$self:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1933
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1935
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1936
    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->val$self:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-static {v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setPermissionCheckUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1937
    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/FragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1941
    :cond_0
    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1947
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1949
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    .line 1950
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1951
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 1952
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1953
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    const-string v2, "recordingSoundUnit"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->changeUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    if-nez v0, :cond_3

    .line 1960
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;-><init>()V

    iput-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    .line 1961
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->val$self:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1964
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->prepareToRecord()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    .line 1970
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->addViewportListener()V

    .line 1972
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-static {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->-$$Nest$mgetUnitManager(Lcom/metamoji/un/sound/UnSoundUnit;)Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->val$self:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setActiveUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1974
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 1976
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updateRecorder()V

    return-void
.end method
