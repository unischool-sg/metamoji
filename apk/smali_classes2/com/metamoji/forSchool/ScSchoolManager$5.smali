.class Lcom/metamoji/forSchool/ScSchoolManager$5;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyChangedForPersonalStatus(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;

.field final synthetic val$finalValue:Ljava/lang/String;

.field final synthetic val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 560
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$5;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager$5;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolManager$5;->val$finalValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 564
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$5;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$5;->val$finalValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->updatePersonalUserStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
