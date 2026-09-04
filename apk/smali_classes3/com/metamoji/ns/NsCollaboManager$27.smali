.class Lcom/metamoji/ns/NsCollaboManager$27;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->handleRoomUpdated(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$nowHash:I

.field final synthetic val$paramDic:Ljava/util/Map;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 2377
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput p2, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$nowHash:I

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$paramDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2382
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$nowHash:I

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArrayHash:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2387
    :cond_0
    const-string v0, "login"

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2389
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$paramDic:Ljava/util/Map;

    invoke-virtual {v0, v2, v1, v1}, Lcom/metamoji/ns/NsCollaboManager;->updateUserInfo(Ljava/util/Map;ZZ)V

    return-void

    .line 2390
    :cond_1
    const-string v0, "logout"

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2392
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$paramDic:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->roomUpdateByUserLogout(Ljava/util/Map;)V

    return-void

    .line 2393
    :cond_2
    const-string v0, "prop"

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2395
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$paramDic:Ljava/util/Map;

    invoke-virtual {v0, v3, v2, v1}, Lcom/metamoji/ns/NsCollaboManager;->updateUserInfo(Ljava/util/Map;ZZ)V

    return-void

    .line 2398
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$value:Ljava/lang/String;

    const-string v3, "mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2400
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$27;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager$27;->val$paramDic:Ljava/util/Map;

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->updateUserInfo(Ljava/util/Map;ZZ)V

    :cond_4
    :goto_0
    return-void
.end method
