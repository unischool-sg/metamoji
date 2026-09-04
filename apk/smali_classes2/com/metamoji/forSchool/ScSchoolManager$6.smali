.class Lcom/metamoji/forSchool/ScSchoolManager$6;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyInitializedForPersonalStatus(Lcom/metamoji/ns/NsCollaboUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;

.field final synthetic val$delKeyList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;Ljava/util/List;)V
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

    .line 606
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$6;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager$6;->val$delKeyList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$6;->val$delKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 611
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v2

    const-string v3, "offline"

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->updatePersonalUserStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
