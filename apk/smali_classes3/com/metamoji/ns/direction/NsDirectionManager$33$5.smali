.class Lcom/metamoji/ns/direction/NsDirectionManager$33$5;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2165
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$5;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2169
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$5;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2173
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    :cond_0
    return-void
.end method
