.class Lcom/metamoji/forSchool/ScSchoolCommand$2;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartFeaturedPersonalModeByGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dcUserId:Ljava/lang/String;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$isTeacherPersonalLayerFinal:Z

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 964
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$isTeacherPersonalLayerFinal:Z

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$dcUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$groupId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$groupName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 967
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$isTeacherPersonalLayerFinal:Z

    if-eqz v0, :cond_0

    .line 969
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$dcUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$userName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$isTeacherPersonalLayerFinal:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 972
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$groupName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$2;->val$isTeacherPersonalLayerFinal:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
