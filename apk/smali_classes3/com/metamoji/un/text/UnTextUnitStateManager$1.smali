.class Lcom/metamoji/un/text/UnTextUnitStateManager$1;
.super Ljava/lang/Object;
.source "UnTextUnitStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnitStateManager;->handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

.field final synthetic val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
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

    .line 143
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$1;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$1;->val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$1;->val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "[!lostfocus]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$1;->val$event:Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {v2}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    .line 163
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$1;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v3, v0, v2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->addEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_1
    invoke-virtual {v3, v0, v2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
