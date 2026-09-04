.class Lcom/metamoji/ns/direction/NsDirectionManager$33$4;
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

.field final synthetic val$dcUserId:Ljava/lang/String;

.field final synthetic val$isGroup:Z

.field final synthetic val$isTeacherPersonalLayer:Z

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 2138
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iput-boolean p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$isGroup:Z

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$dcUserId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$userName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$isTeacherPersonalLayer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2141
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2143
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$isGroup:Z

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$dcUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$userName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;->val$isTeacherPersonalLayer:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
