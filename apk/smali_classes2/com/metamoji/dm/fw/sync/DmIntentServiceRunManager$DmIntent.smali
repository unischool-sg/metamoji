.class Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;
.super Ljava/lang/Object;
.source "DmIntentServiceRunManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DmIntent"
.end annotation


# instance fields
.field _intent:Landroid/content/Intent;

.field _isForce:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;Landroid/content/Intent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->this$0:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 142
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->_isForce:Ljava/lang/Boolean;

    .line 144
    iput-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->_intent:Landroid/content/Intent;

    .line 145
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->_isForce:Ljava/lang/Boolean;

    return-void
.end method
