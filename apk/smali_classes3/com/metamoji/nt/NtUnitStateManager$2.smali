.class Lcom/metamoji/nt/NtUnitStateManager$2;
.super Ljava/lang/Object;
.source "NtUnitStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitStateManager;->handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitStateManager;

.field final synthetic val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
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

    .line 155
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitStateManager$2;->this$0:Lcom/metamoji/nt/NtUnitStateManager;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitStateManager$2;->val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager$2;->val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitStateManager$2;->val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {v2}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    iget-object v3, p0, Lcom/metamoji/nt/NtUnitStateManager$2;->this$0:Lcom/metamoji/nt/NtUnitStateManager;

    if-eqz v0, :cond_1

    .line 178
    :try_start_2
    invoke-virtual {v3, v1, v2}, Lcom/metamoji/nt/NtUnitStateManager;->addEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v3, v1, v2}, Lcom/metamoji/nt/NtUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
