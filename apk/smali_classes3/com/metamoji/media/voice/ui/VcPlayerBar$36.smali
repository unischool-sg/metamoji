.class Lcom/metamoji/media/voice/ui/VcPlayerBar$36;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->tagJump(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$index:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/util/Map;)V
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

    .line 3030
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->val$index:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3032
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3037
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3038
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 3039
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 3046
    :cond_1
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->val$index:Ljava/util/Map;

    const-string v3, "$id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3048
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v3

    .line 3049
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;->val$index:Ljava/util/Map;

    const-string v5, "$ticket"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3050
    invoke-static {v3}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v3

    .line 3051
    invoke-static {v4, v3}, Lcom/metamoji/media/voice/VcUtil;->getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 3052
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 3053
    const-string v5, "indexId"

    invoke-virtual {v4, v5}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 3054
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 3061
    new-instance v1, Lcom/metamoji/nt/NtTagJump;

    invoke-virtual {v4}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/metamoji/nt/NtTagJump;-><init>(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtEditorWindowController;)V

    .line 3062
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$1;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$36;Lcom/metamoji/nt/NtTagJump;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 3069
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$2;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$36$2;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar$36;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
